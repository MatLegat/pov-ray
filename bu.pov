// comando para renderizar:
// povray bu.pov +A0.1 +w1920 +h1080

#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


camera {
  location <0, 2.7, -5>
  look_at  <13, 1.3,  2>
}

background { color Black }

// Fonte de Luz das janelas
light_source { <20, 4.2,  18.5> color rgb <0.3, 0.3, 0.3>}
light_source { <10, 4.2,  18.5> color rgb <0.3, 0.3, 0.3>}
light_source { <30, 4.2,  18.5> color rgb <0.3, 0.3, 0.3>}
light_source { <45, 4.2,  18.5> color rgb <0.3, 0.3, 0.3>}
light_source { <45.1, 4.2,  9 > color rgb <0.3, 0.3, 0.3>}
light_source { <45.1, 4.2,  -1> color rgb <0.3, 0.3, 0.3>}
light_source { <45.1, 4.2, -11> color rgb <0.3, 0.3, 0.3>}



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
    pigment{ color rgb <0.6, 0.8, 0.7>}
    finish { phong 0.5}
  }
  translate <0,0,20>
}
plane {
  <1, 0, 0>, -1
  texture{
    pigment{ color rgb <0.6, 0.8, 0.7>}
    finish { phong 0.5}
  }
  translate <48,0,0>
}

// Hastes janela
#declare haste =
  box {
    <7.92, -10,-4.68>,
    <8.08, 10,-4.52>
    pigment {
      color rgb Gray
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
object {
  haste
  translate <5, 0, 23.6>
}
object {
  haste
  translate <7, 0, 23.6>
}
object {
  haste
  translate <9, 0, 23.6>
}
object {
  haste
  translate <11, 0, 23.6>
}
object {
  haste
  translate <13, 0, 23.6>
}
object {
  haste
  translate <15, 0, 23.6>
}
object {
  haste
  translate <17, 0, 23.6>
}
object {
  haste
  translate <19, 0, 23.6>
}
object {
  haste
  translate <21, 0, 23.6>
}object {
  haste
  translate <23, 0, 23.6>
}
object {
  haste
  translate <25, 0, 23.6>
}
object {
  haste
  translate <27, 0, 23.6>
}
object {
  haste
  translate <29, 0, 23.6>
}
object {
  haste
  translate <31, 0, 23.6>
}
object {
  haste
  translate <33, 0, 23.6>
}
object {
  haste
  translate <35, 0, 23.6>
}
object {
  haste
  translate <37, 0, 23.6>
}
// Parede do fundo
object {
  haste
  translate <39, 0, 20>
}
object {
  haste
  translate <39, 0, 18>
}
object {
  haste
  translate <39, 0, 16>
}
object {
  haste
  translate <39, 0, 14>
}
object {
  haste
  translate <39, 0, 12>
}
object {
  haste
  translate <39, 0, 10>
}
object {
  haste
  translate <39, 0, 8>
}
object {
  haste
  translate <39, 0, 6>
}
object {
  haste
  translate <39, 0, 4>
}
object {
  haste
  translate <39, 0, 2>
}
object {
  haste
  translate <39, 0, 0>
}
object {
  haste
  translate <39, 0, -2>
}
object {
  haste
  translate <39, 0, -4>
}

// Estante amarela
#declare estante =
  union {
    box {
      <15,  3,-4.5>,
      <45,-20,-3.5>
      pigment {
        color rgb Yellow
      }
    }
    box {
      <14.9, 2.7,-4.5>,
      <15, 1.2,-3.5>
      pigment {
        color rgb Gray
      }
    }box {
      <14.8, 2.7,-4.5>,
      <15, 2.4,-3.5>
      pigment {
        color rgb Blue
      }
    }
  }
object {
  estante
}
object {
  estante
  translate <0, 0, -2.3>
}

// Mesa
#declare mesa =
  union {
    box {
      <9, 0.3,-5.7>,
      <7, 0.2,-3.5>
      pigment {
        color rgb White
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
      rotate y*35
      translate <8, -1, -4.6>
    }
    box {
      <-0.08, 0.0, 1>
      < 0.08, 0.1,-1>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
      rotate y*-35
      translate <8, -1, -4.6>
    }
  }

// Cadeira
#declare cadeira =
  union {
    box {
      <7, -0.4,-4.4>,
      <5.8,   -0.3,-3.6>
      texture{
        pigment{ color rgb Blue}
        // finish { phong 1}
      }
    }
    box {
      <7.95, -10,-4.65>,
      <8.05, -0.4,-4.55>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
      translate <-1.1, 0, 0.25>
    }
    box {
      <7.95, -10,-4.65>,
      <8.05, -0.4,-4.55>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
      translate <-1.1, 0, 1>
    }
    box {
      <7.95, -10,-4.65>,
      <8.05,  0.2,-4.55>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
      translate <-2.2, 0, 0.25>
    }
    box {
      <7.95, -10,-4.65>,
      <8.05,  0.2,-4.55>
      pigment {
        color rgb <0.05, 0.05, 0.05>
      }
      translate <-2.2, 0, 1>
    }
    object {
      Round_Cylinder
       (<0,0,0>,<0,0.3001,0>,0.5,0.15,0)
      texture{
        pigment{ color rgb Blue}
        // finish { phong 1}
      }
      scale <1, 0.5, 1>
      rotate <90, 90, 0>
      translate <5.7, 0.25, -4>
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
      translate <3.8, 0, 0>
    }
    object {
      cadeira
      translate <3.8, 0, -1.2>
    }
    object {
      cadeira
      translate <-5.2, 0, 4>
      rotate y*180
      translate <13, 0, -4>
    }
    object {
      cadeira
      translate <-5.2, 0, 4>
      rotate y*180
      translate <13, 0, -5.2>
    }
  }

// Fila 1
object {
  carteira
}
object {
  carteira
  translate <0, 0, 05>
}
object {
  carteira
  translate <0, 0, 10>
}
object {
  carteira
  translate <0, 0, 15>
}
object {
  carteira
  translate <0, 0, 20>
}
// Fila 2
object {
  carteira
  translate <6.5, 0, 05>
}
object {
  carteira
  translate <6.5, 0, 10>
}
object {
  carteira
  translate <6.5, 0, 15>
}
object {
  carteira
  translate <6.5, 0, 20>
}
// Fila 3
object {
  carteira
  translate <13, 0, 05>
}
object {
  carteira
  translate <13, 0, 10>
}
object {
  carteira
  translate <13, 0, 15>
}
object {
  carteira
  translate <13, 0, 20>
}
// Fila 4
object {
  carteira
  translate <19.5, 0, 05>
}
object {
  carteira
  translate <19.5, 0, 10>
}
object {
  carteira
  translate <19.5, 0, 15>
}
object {
  carteira
  translate <19.5, 0, 20>
}
// Fila 5
object {
  carteira
  translate <26, 0, 05>
}
object {
  carteira
  translate <26, 0, 10>
}
object {
  carteira
  translate <26, 0, 15>
}
object {
  carteira
  translate <26, 0, 20>
}

// Coluna salmão
box {
  <55,10,16.5>,
  <46,-10,30>
  pigment {
    color rgb <0.8, 0.45, 0.45>
  }
}
