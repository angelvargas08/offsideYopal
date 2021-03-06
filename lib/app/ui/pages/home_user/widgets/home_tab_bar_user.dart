
import 'package:flutter/material.dart';
import 'package:offside_yopal/app/ui/pages/home/home_pages.dart';
import 'package:flutter_meedu/screen_utils.dart';
import 'package:offside_yopal/app/ui/pages/home_user/home_pages_user.dart';

class HomeTabBarUser extends StatelessWidget {
   HomeTabBarUser({Key? key}) : super(key: key);
  final _homeController = homeProvideruser.read;
  @override
  Widget build(BuildContext context) {
   final isDark = context.isDarkMode;
   final color = isDark? Colors.pinkAccent : Colors.blue;
    return SafeArea(
      top: false,
      child: TabBar(
        labelColor: color,
        indicator: _CustomIndicator(color),
        unselectedLabelColor: isDark ? Colors.white30 : Colors.black26,
        tabs:const [
          Tab(
            icon: Icon(Icons.home_rounded),
          ),
          Tab(
            icon: Icon(Icons.sports_soccer),
          ),
           Tab(
            icon: Icon(Icons.manage_search_rounded),
          ),
          Tab(
            icon: Icon(Icons.person_rounded),
          ),
          
        ],
        controller: _homeController.tabControlleruser,
        
        ),
        
    );
    
  }
  
}

class _CustomIndicator extends Decoration{
  final Color _color;

 const _CustomIndicator(this._color);
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
   return _CirclePainter(_color);
  }
  
}

class _CirclePainter extends BoxPainter{
  final Color _color;

  _CirclePainter(this._color);
    @override
  void paint(
    Canvas canvas, 
    Offset offset, 
    ImageConfiguration configuration,
    ) {
     final size = configuration.size!;
    final paint = Paint();
    paint.color = _color;
    final center = Offset(offset.dx + size.width*0.5, size.height*0.8);
    canvas.drawCircle(
      center, 3, paint
      );
      
  }

  
  
}

