import 'package:flutter/material.dart';
import 'package:kasirs/pages/produk/produk.dart';
import 'package:kasirs/pages/report.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              './aset/login.png', height: 40,
            ),
            SizedBox(width: 10,),
            Text(
              'Seblak Sulthane',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2, crossAxisSpacing: 20, mainAxisSpacing: 20,
          children: [
            _buildHomeButton(
              context,
              icon: Icons.shopping_cart,
              label: 'PAYMENT',
              color: Colors.red,
              onTap: (){
                //ke halaman payment
              },
            ),
            _buildHomeButton(
              context,
              icon: Icons.list_alt,
              label: 'PRODUCT',
              color: Colors.red,
              onTap: (){
                //ke halaman payment
              },
            ),
            _buildHomeButton(
              context,
              icon: Icons.attach_money,
              label: 'SALES REPORT',
              color: Colors.red,
              onTap: (){
                //ke halaman payment
              },
            ),
            _buildHomeButton(
              context,
              icon: Icons.person,
              label: 'ACCOUNT INFO',
              color: Colors.red,
              onTap: (){
                //ke halaman payment
              },
            ),
          ],
        ),
      ),
    );
  }

  //fungsi homebutton
  Widget _buildHomeButton(BuildContext context,
  {required IconData icon, required String label, required Color color, required VoidCallback onTap}){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 160,
        //padding: EdgeInsets.all(5),
        //margin: EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color: Colors.grey[300]!),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: color),
            SizedBox(height: 10,),
            Text(
              label,
              style: TextStyle(
                fontSize: 18, color: color, fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}