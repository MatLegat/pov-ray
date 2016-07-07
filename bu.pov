// comando para renderizar:
// povray bu.pov +A0.1 +w1920 +h1080

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


camera {
  location <0, 2.7, -5>
  look_at  <13, 1.3,  2.5>
}

background { color Black }

// Fonte de Luz das janelas
// // FAST:
// #declare I = 0;
// #while (I <= 60)
//   light_source { <I, 4.2,  18.5> color rgb <0.3, 0.3, 0.3>}
//   #declare I = I + 10;
// #end
// #declare I = -20;
// #while (I <= 20)
//   light_source { <45.1, 4.2,  I > color rgb <0.17, 0.17, 0.17>}
//   #declare I = I + 10;
// #end
// REALISTC:
#declare I = 0;
#while (I <= 60)
  light_source { <I, 4.2,  18.5> color rgb <0.007, 0.007, 0.007>}
  #declare I = I + 0.2;
#end
#declare I = -20;
#while (I <= 20)
  light_source { <45.1, 4.2,  I > color rgb <0.004, 0.004, 0.004>}
  #declare I = I + 0.2;
#end



// Ch�o
plane {
  <0, 1, 0>, -1
  pigment {
    checker color rgb <0.8, 0.8, 0.65>, color rgb <0.9, 0.9, 0.75>
  }
}

// Teto
plane {
  <0, -1, 0>, -1
  pigment {
    checker color rgb <0.8, 0.8, 0.65>, color rgb <0.9, 0.9, 0.75>
  }
  translate <0,4,0>
}

// Paredes
plane {
  <0, 0, 1>, -1
  texture{
    pigment{ color rgb <0.65, 0.9, 0.8>}
    finish { phong 0.7}
  }
  translate <0,0,20>
}
plane {
  <1, 0, 0>, -1
  texture{
    pigment{ color rgb <0.4, 0.65, 0.55>}
    finish { phong 0.4}
  }
  translate <48,0,0>
}

// Hastes janela
#declare haste =
  box {
    <7.92, -10,-4.68>,
    <8.08, 10,-4.52>
    pigment {
      color Gray
    }
  }
// Hastes horizontais
object {
  haste
  translate <7, -7, 23.6>
  rotate z*90
  translate <10, -11, 0>
}
object {
  haste
  translate <7, -7, 23.6>
  rotate z*90
  translate <30, -11, 0>
}
object {
  haste
  translate <7, -7, 23.6>
  rotate z*90
  translate <10, -14, 0>
}
object {
  haste
  translate <7, -7, 23.6>
  rotate z*90
  translate <30, -14, 0>
}
// Parede do fundo
object {
  haste
  translate <39, 0, 19>
  rotate x*90
  translate <0, 15.5, 10>
}
object {
  haste
  translate <39, 0, 19>
  rotate x*90
  translate <0, 18.4, 10>
}
object {
  haste
  translate <39, 0, 19>
  rotate x*90
  translate <0, 15.5, -10>
}
object {
  haste
  translate <39, 0, 19>
  rotate x*90
  translate <0, 18.4, -10>
}
// Hastes verticais
#declare I = 5;
#while (I <= 39)
  object {
    haste
    translate <I, 0, 23.6>
  }
  #declare I = I + 2;
#end
// Parede do fundo
#declare I = -4;
#while (I <= 20)
  object {
    haste
    translate <39, 0, I>
  }
  #declare I = I + 2;
#end

// Estante amarela
#declare estante =
  union {
    box {
      <15,  3,-4.45>,
      <43,-20,-3.55>
      pigment {
        color Yellow
      }
    }
    box {
      <14.9, 2.6,-4.4>,
      <15, 1.4,-3.6>
      pigment {
        color Gray
      }
    }
    box {
      <14.85, 1.7,-3.98>,
      <15,   2.6,-3.65>
      pigment {
        color White
      }
    }
    box {
      <14.85, 1.7,-3.98>,
      <15,   2.6,-3.65>
      pigment {
        color White
      }
      translate <0, 0, -0.37>
    }
    box {
      <14.8, 2.6,-4.4>,
      <15, 2.4,-3.6>
      pigment {
        color Blue
      }
    }
  }
object {
  estante
}
object {
  estante
  translate <0, 0, -2>
}

// Mesa
#declare mesa =
  union {
    box {
      <8.82, 0.3,-5.7>,
      <7.18, 0.2,-3.5>
      pigment {
        color White
      }
    }
    box {
      <7.92, -10,-4.68>,
      <8.08, 0.2,-4.52>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
    }
    box {
      <-0.08, 0.0, 1>
      < 0.08, 0.1,-1>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
      rotate y*30
      translate <8, -1, -4.6>
    }
    box {
      <-0.08, 0.0, 1>
      < 0.08, 0.1,-1>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
      rotate y*-30
      translate <8, -1, -4.6>
    }
  }

// Cadeira
#declare cadeira =
  union {
    object {
      Round_Box(
        <6.7, -0.4,-4.4>,
        <5.8, -0.3,-3.6>,
        0.07,
        0
      )
      texture {
        pigment{ color Blue}
        // finish { phong 1}
      }
    }
    box {
      <7.98, -10,-4.62>,
      <8.02, -0.4,-4.58>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
      translate <-1.35, 0, 0.24>
    }
    box {
      <7.98, -10,-4.62>,
      <8.02, -0.4,-4.58>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
      translate <-1.35, 0, 0.975>
    }
    box {
      <7.98, -10,-4.62>,
      <8.02,  0.2,-4.58>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
      translate <-2.2, 0, 0.24>
    }
    box {
      <7.98, -10,-4.62>,
      <8.02,  0.2,-4.58>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
      translate <-2.2, 0, 0.975>
    }
    object {
      Round_Cylinder
       (<0,0,0>,<0,0.3001,0>,0.5,0.15,0)
      texture{
        pigment{ color Blue}
        // finish { phong 1}
      }
      scale <0.8, 0.3, 0.8>
      rotate <90, 90, 0>
      translate <5.75, 0.25, -4>
    }
  }

#declare carteira =
  union {
    object {
      mesa
      translate <3, 0, 0>
    }
    object {
      cadeira
      translate <4, 0, 0>
    }
    object {
      cadeira
      translate <4, 0, -1.2>
    }
    object {
      cadeira
      translate <-5.2, 0, 4>
      rotate y*180
      translate <12.8, 0, -4>
    }
    object {
      cadeira
      translate <-5.2, 0, 4>
      rotate y*180
      translate <12.8, 0, -5.2>
    }
  }

object {
  carteira
}
#declare I = 0;
#while (I <= 26)
  #declare J = 4.5;
  #while (J <= 20)
    object {
      carteira
      translate <I, 0, J>
    }
    #declare J = J + 4.8;
  #end
  #declare I = I + 5;
#end

// Coluna laranja
box {
  <55,10,16.5>,
  <46,-10,30>
  pigment {
    color rgb <0.8, 0.55, 0.45>
  }
}
