#include "colors.inc"
#include "textures.inc"


camera {
  location <0, 2.7, -5>
  look_at  <13, 1.3,  2>
}

background { color Black }

// Fonte de Luz das janelas
light_source { <20, 4,  19> color rgb <0.3, 0.3, 0.3>}
light_source { <10, 4,  19> color rgb <0.3, 0.3, 0.3>}
light_source { <30, 4,  19> color rgb <0.3, 0.3, 0.3>}
light_source { <45, 4,  19> color rgb <0.3, 0.3, 0.3>}
light_source { <45, 4,  9 > color rgb <0.3, 0.3, 0.3>}
light_source { <45, 4,  -1> color rgb <0.3, 0.3, 0.3>}
light_source { <45, 4, -11> color rgb <0.3, 0.3, 0.3>}


// Ch�o
plane {
  <0, 1, 0>, -1
  pigment {
    checker color rgb <0.8, 0.8, 0.65>, color rgb <0.9, 0.9, 0.75>
  }
}

// Teto
plane {
  <0, 1, 0>, -1
  pigment {
    checker color rgb <0.8, 0.8, 0.65>, color rgb <0.9, 0.9, 0.75>
  }
  translate <0,5,0>
}

// Paredes
plane {
  <0, 0, 1>, -1
  pigment {
   color rgb <0.2, 0.4, 0.2>
  }
  translate <0,0,20>
}
plane {
  <1, 0, 0>, -1
  pigment {
    color rgb <0.2, 0.4, 0.2>
  }
  translate <50,0,0>
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

// Mesas
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
object {
  mesa
  translate <3, 0, 0>
}

// Coluna salmão
box {
  <55,10,15>, <47,-10,40>
  pigment {
    color rgb <0.9, 0.45, 0.45>
  }
}
