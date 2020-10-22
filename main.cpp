#include <iostream>
#include "lib/math/operations.hpp"
#include <yoga/YGNode.h>
#include <yoga/Yoga.h>
#include <ncurses.h>
// #include <boost/lexical_cast.hpp>

// static YGSize _measure(YGNodeRef node,
//                        float width,
//                        YGMeasureMode widthMode,
//                        float height,
//                        YGMeasureMode heightMode) {
//   int *measureCount = (int *) YGNodeGetContext(node);
//   if (measureCount) {
//     (*measureCount)++;
//   }

//   return YGSize{
//       .width = 10, .height = 10,
//   };
// }

int main() {
  std::cout<<"Hello CMake Simon!"<<std::endl;
  math::operations op;
  op.test();
  op.new_method();

  // WINDOW *boite;
    
  // initscr();

  // int num = 4;
  // std::string str = boost::lexical_cast<std::string>(num);
  // printw(str);

  // while(1) {
  //     printw("Le terminal actuel comporte %d lignes et %d colonnes\n", LINES, COLS);
  //     refresh();  // Rafraîchit la fenêtre par défaut (stdscr) afin d'afficher le message

  //     attron(A_NORMAL);

  //     int a = 13;
  //     char t[] = "OK";
      
      
  //     if(getch() != 410)  // 410 est le code de la touche générée lorsqu'on redimensionne le terminal
  //         break;
  // }
  
  // endwin();
  
  // free(boite);
  
  return 0;

  // const YGNodeRef root = YGNodeNew();


  // YGNodeStyleSetPadding(root, YGEdgeTop, 20.0);
  // YGNodeStyleSetPadding(root, YGEdgeLeft, 20.0);
  // YGNodeStyleSetMargin(root, YGEdgeTop, 20.0);
  // YGNodeStyleSetMargin(root, YGEdgeLeft, 20.0);

  // YGNodeStyleSetAlignItems(root, YGAlignFlexStart);
  // YGNodeStyleSetWidth(root, 100);
  // YGNodeStyleSetHeight(root, 100);

  // int measureCount = 0;

  // const YGNodeRef child_0 = YGNodeNew();
  // YGNodeSetContext(child_0, &measureCount);
  // YGNodeSetMeasureFunc(child_0, _measure);
  // YGNodeStyleSetPadding(child_0, YGEdgeLeft, 20.0);
  // YGNodeInsertChild(root, child_0, 0);

  // YGNodeCalculateLayout(root, YGUndefined, YGUndefined, YGDirectionLTR);
  
  // printf("%g\n", YGNodeLayoutGetTop(root)); 
  // printf("%g\n", YGNodeLayoutGetLeft(root)); 
  // printf(">> %g\n", YGNodeLayoutGetTop(child_0)); 
  // printf(">> %g\n", YGNodeLayoutGetLeft(child_0)); 
  // printf("%g\n", YGNodeLayoutGetWidth(root)); 
  // printf("%g\n", YGNodeLayoutGetHeight(root)); 
  // // ASSERT_FLOAT_EQ(0, YGNodeLayoutGetLeft(root_child0));
  // // ASSERT_FLOAT_EQ(0, YGNodeLayoutGetTop(root_child0));
  // // ASSERT_FLOAT_EQ(10, YGNodeLayoutGetWidth(root_child0));
  // // ASSERT_FLOAT_EQ(10, YGNodeLayoutGetHeight(root_child0));
  // YGNodeFreeRecursive(root);

  int sum = op.sum(3, 4);
  std::cout<<"Sum of 3 + 4 :"<<sum<<std::endl;
  return 0;
}
