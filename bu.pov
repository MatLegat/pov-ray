#include "colors.inc"
#include "textures.inc"


camera {
    location <0, 2, -5>
    look_at  <14, 1,  2>
}

background { color Black }

// Fonte de Luz Branca 
light_source { <20, 4, 19> color White}


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
    //pigment {
    //  color rgb <0.2, 0.5, 0.2>
    //}
    translate <0,0,20>
    texture{pigment{rgb<0.89,0.9,0.95>*1.6}}
}
plane {
    <1, 0, 0>, -1
    pigment {
      color rgb <0.2, 0.5, 0.2>
    }
    translate <50,0,0>
}

box {
    <10,10,10>, <50,50,50>
    pigment {
      color rgb <0.9, 0.45, 0.45>
    }
}


//Coluna laranja
box {
    <55,10,15>, <47,-10,40>
    pigment {
      color rgb <0.9, 0.45, 0.45>
    }
}
