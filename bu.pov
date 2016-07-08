// comando para renderizar:
// povray bu.pov +A0.1 +w1920 +h1080

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"

#declare Realistic = yes;

camera {
  location <0, 2.7, -5>
  look_at  <13, 1.3,  2.55>
}

background { color Black }

// Fonte de Luz das janelas
#if (Realistic)
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
#else
  #declare I = 0;
  #while (I <= 60)
    light_source { <I, 4.2, 18.5> color rgb <0.3, 0.3, 0.3>}
    #declare I = I + 10;
  #end
  #declare I = -20;
  #while (I <= 20)
    light_source { <45.1, 4.2, I> color rgb <0.17, 0.17, 0.17>}
    #declare I = I + 10;
  #end
#end
// Lâmpadas
#declare lampada =
  union {
    prism{ 0.00, 1.00, 4
       <-1.00, 0.00>,
       < 1.00, 0.00>,
       < 0.00, 2.00>,
       <-1.00, 0.00>
      texture{
        pigment{color White}
        finish {ambient 0.15
                diffuse 0.85}
      }
      scale <0.1, 2, 0.1>
      rotate <90, 0, 180>
      translate <6, 4.9, 0>
    }
    box {
      <0, 0, 0>
      <0.01, 0.15, 2>
      rotate z*-25
      translate <5.82, 4.75, 0>
      texture{
        pigment{color White}
        finish { Metallic_Finish }
      }
    }
    box {
      <0, 0, 0>
      <0.01, 0.15, 2>
      rotate z*25
      translate <6.15, 4.75, 0>
      texture{
        pigment{color White}
        finish { Metallic_Finish }
      }
    }
    box {
      <0, 0, 0>
      <0.01, 0.15, 2>
      rotate z*90
      scale x*1.4
      translate <6.1, 4.87, 0>
      texture{
        pigment{color White}
        finish { Metallic_Finish }
      }
    }
    cylinder {
      <0, 0, 0.05>
      <0, 0, 1.95>
      0.03
      translate <6.05, 4.82, 0>
      texture{
        pigment{color White}
        finish { 
          phong 1 
          ambient 0.75
        }
      }
    }
    cylinder {
      <0, 0, 0.05>
      <0, 0, 1.95>
      0.03
      translate <5.95, 4.82, 0>
      texture{
        pigment{color White}
        finish { 
          phong 1 
          ambient 0.75
        }
      }
    }
    #if (Realistic)
      #declare I = 0.1;
      #while (I <= 1.9)
        light_source { <6, 4.78, I> color rgb <0.0007, 0.0007, 0.0007>}
        #declare I = I + 0.2;
      #end
    #else
      // light_source { <6, 4.78, 0.1> color rgb <0.008, 0.008, 0.008>}
      // light_source { <6, 4.78, 1.9> color rgb <0.008, 0.008, 0.008>}
    #end
  }

object {
  lampada
  rotate y*90
  translate <4, 0, 3>
}
object {
  lampada
  rotate y*90
  translate <8, 0, 3>
}
object {
  lampada
  translate <10, 0, -5.7>
}
#declare I = 18;
#while (I < 38)
  #declare J = -5.7;
  #while (J <= 1.3)
    object {
      lampada
      translate <I, 0, J>
    }
    #declare J = J + 3.5;
  #end
  #declare I = I + 6;
#end
object {
  lampada
  translate <2.6, 0, -2>
}
object {
  lampada
  translate <2.2, 0, 0.2>
}
object {
  lampada
  translate <9.2, 0, 0.2>
}
#declare I = 0;
#while (I <= 35)
  #declare J = 4.3;
  #while (J <= 13.4)
    object {
      lampada
      translate <I, 0, J>
    }
    #declare J = J + 4.3;
  #end
  #declare I = I + 3.5;
#end
#while (I <= 35)
  #declare J = 4.3;
  #while (J <= 13.4)
    object {
      lampada
      translate <I, 0, J>
    }
    #declare J = J + 4.3;
  #end
  #declare I = I + 3.5;
#end

box {
  <18,   5,    1.3>
  <18.6, 4.7, 1.4>
  pigment {
    color Red
  }
}

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
    checker color rgb <0.87, 0.87, 0.65>, color rgb <0.95, 0.95, 0.72>
    scale x*3
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
    #declare I = 0.3;
    #while (I <= 25)
      #declare J = 0;
      #while (J > -5)
        box {
          <15.1, 2.9, -4.46>,
          <19.7, 2.3, -3.54>
          pigment {
            color rgb <0.65, 0.65, 0>
          }
          translate <I, J, 0>
        }
        #declare J = J - 0.7;
      #end
      #declare I = I + 5.5;
    #end
    #declare I = 0;
    #while (I >= -0.6)
      #declare J = 0;
      #while (J >= -5)
        box {
          <14.999, 2.67,-3.8>,
          <15, 2.6,-3.62>
          pigment {
            color rgb <0.1, 0.1, 0>
          }
          translate <0, J, I>
        }
        #declare J = J - 0.37;
      #end
      #declare I = I - 0.2;
    #end
  }
object {
  estante
}
object {
  estante
  translate <0, 0, -2>
}

// Saídas de ar
#declare saida_ar = 
  union {
    box {
      <8, 6, -4.8>,
      <6, 4.999, -3.8>
      pigment {
        color rgb <0.65, 0.65, 0.35>
      }
    }
    box {
      <7.8, 6, -4.7>,
      <6.2, 4.998, -3.9>
      pigment {
        color rgb <0.5, 0.5, 0.3>
      }
    }
    box {
      <7.6, 6, -4.6>,
      <6.4, 4.997, -4>
      pigment {
        color rgb <0.65, 0.65, 0.35>
      }
    }
    box {
      <7.4, 6, -4.5>,
      <6.6, 4.996, -4.1>
      pigment {
        color rgb <0.5, 0.5, 0.3>
      }
    }
  }
object {
  saida_ar
  scale <0.35, 0, 0.8>
  translate <4, 0, -1>
}
object {
  saida_ar
  scale <0.35, 0, 0.8>
  translate <4, 0, 2>
}
object {
  saida_ar
  scale <0.35, 0, 0.8>
  translate <5, 0, 7.5>
}
object {
  saida_ar
  scale <0.35, 0, 0.8>
  translate <11, 0, -1>
}
object {
  saida_ar
  scale <1.6, 0, 0.6>
  translate <1, 0, 1.5>
}
object {
  saida_ar
  scale <1.0, 0, 0.6>
  translate <20, 0, -0.5>
}
object {
  saida_ar
  scale <0.35, 0, 0.8>
  translate <12, 0, 7>
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
        pigment {
          checker color rgb <0.1, 0.1, 1>, color rgb <0, 0, 0.75>
          scale .005
        }
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
        pigment {
          checker color rgb <0.1, 0.1, 1>, color rgb <0, 0, 0.75>
          scale .005
        }
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
