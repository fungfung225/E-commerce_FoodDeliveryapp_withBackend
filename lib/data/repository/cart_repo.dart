import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:fooddelivery_backend/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/cart_model.dart';

class CartRepo{
  final SharedPreferences sharedPreferences;
  CartRepo({required this.sharedPreferences});

  List<String> cart =[];
  List<String> cartHistory=[];

  void addToCartList(List<CartModel> cartList){
      //sharedPreferences.remove(AppConstants.CART_LIST);
      //sharedPreferences.remove(AppConstants.CART__HISTORYLIST);
      var time = DateTime.now().toString();
      cart=[];
      /* convert objects to string because sharedPreferences only accepts string*/
      cartList.forEach((element) {
        element.time = time;
        return cart.add(jsonEncode(element));
      });

      sharedPreferences.setStringList(AppConstants.CART_LIST, cart);
      //print(sharedPreferences.getStringList(AppConstants.CART_LIST));
    //getCartList();
  }

  List<CartModel> getCartList(){
    List<String> carts =[];
    if(sharedPreferences.containsKey(AppConstants.CART_LIST)){
      carts = sharedPreferences.getStringList(AppConstants.CART_LIST)!;
      print("inside getCartLis" + carts.toString());
    }
    List<CartModel> cartList=[];
    
    carts.forEach((element) { 
      cartList.add(CartModel.fromJson(jsonDecode(element)));
    });

    return cartList;
  }

  List<CartModel> getCartHistoryList(){
    if(sharedPreferences.containsKey(AppConstants.CART__HISTORYLIST)){
      //cartHistory=[];
      cartHistory = sharedPreferences.getStringList(AppConstants.CART__HISTORYLIST)!;
    }
    List<CartModel> cartListHistory=[];
    cartHistory.forEach((element) =>cartListHistory.add(CartModel.fromJson(jsonDecode(element))));
    return  cartListHistory;
  }

  void addToCartHistoryList(){
    if(sharedPreferences.containsKey(AppConstants.CART__HISTORYLIST)){
      cartHistory = sharedPreferences.getStringList(AppConstants.CART__HISTORYLIST)!;
    }

    for(int i =0; i<cart.length; i++){
      print("history list "+cart[i]);
      cartHistory.add(cart[i]);
    }

    removeCart();
    sharedPreferences.setStringList(AppConstants.CART__HISTORYLIST, cartHistory);
    print("the length of history list is " + getCartHistoryList().length.toString());
    for(int k=0; k<getCartHistoryList().length; k++){
      print("the time for the order is " + getCartHistoryList()[k].time.toString());
    }
  }

  void removeCart(){
    cart=[];
    sharedPreferences.remove(AppConstants.CART_LIST);
  }
}