import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 우측상단 디버그 리본 제거
      home: MyPage()

    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  final List<String> babies = <String>['A','B','C','D','E','F','G']; // 추후 받아올 아이 정보
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          title: Text('마이페이지', style: TextStyle(color: Colors.black))
      ),
      body:Column(
        children:[
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: babies.length,
                itemBuilder: (context, index){
                  return Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
                      onPressed: (){},
                      child:Text('${babies[index]}',style: TextStyle(color: Colors.black),)
                    )
                  );
                })
          ,flex: 2,),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                     height: MediaQuery.of(context).size.width,
                     padding: EdgeInsets.all(30), // 네 면의 여백을 3만큼 줌
                     child:OutlinedButton(
                       onPressed: (){},
                       child: Text('아기 정보',style: TextStyle(color: Colors.black),)
                     )
                  )
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(30), // 네 면의 여백을 3만큼 줌
                    child: OutlinedButton(
                      onPressed: (){},
                      child: Text('우리 아기 등록',style: TextStyle(color: Colors.black),)
                    )
                  )
                )
              ],
            ),
          flex:2),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(30),
                    child: OutlinedButton(
                      onPressed: (){},
                      child: Text('설정',style: TextStyle(color: Colors.black),)
                    )
                  )
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(30),
                    child: OutlinedButton(
                      onPressed: (){},
                      child: Text("공지사항",style: TextStyle(color: Colors.black),)
                    )
                  )
                )
              ],
            )
          ,flex: 2,),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width*0.5,
              padding: EdgeInsets.all(40),
              child: OutlinedButton(
                onPressed: (){},
                child: Text('로그아웃',style: TextStyle(color: Colors.black),)
              )
            )
          ,flex:2 ,)
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: '캘린더'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: '챗봇'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '설정'
          ),
        ],
        selectedItemColor: Color(0xFFA86700),
        unselectedItemColor: Colors.orangeAccent,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed
      )
      /*Container(
        color: Colors.orangeAccent,
        child: Container(
         height: 70,
         padding: EdgeInsets.only(bottom: 10,top: 5),

         child: const TabBar(
           indicatorSize: TabBarIndicatorSize.label,
           indicatorColor: Colors.orange,
           labelColor: Colors.orange,
           unselectedLabelColor: Colors.white
         ,tabs: [
           Tab(icon: Icon(Icons.home),text:'홈'),
           Tab(icon: Icon(Icons.calendar_month),text:'캘린더'),
           Tab(icon: Icon(Icons.chat_bubble),text:'챗봇'),
           Tab(icon: Icon(Icons.format_align_justify),text:'홈')
         ],)
        )
      )*/ // TabBar, BottomNavigationBar 보류
      ,
    );
  }
}
