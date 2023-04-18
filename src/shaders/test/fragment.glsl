uniform vec3 uColor;
uniform sampler2D uTexture;

varying vec2 vUv;
varying float vElavation;

void main() {
    vec4 textureColor = texture2D(uTexture, vUv);
    textureColor.rgb *= vElavation *2.0 + 0.5;
    gl_FragColor = textureColor;
}