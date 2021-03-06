//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Diffuse;
//   float4 g_ForceAlphaColor;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ViewportSize;
//   float4 mrgPlayableParam;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampAlpha;
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   g_Diffuse                             c16      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_ViewportSize                        c24      1
//   mrgTexcoordIndex                      c26      2
//   g_LightScatteringColor                c75      1
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampAlpha                             s6       1
//

    ps_3_0
    def c0, 0.5, 4, 0, 0
    def c1, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord5_pp v2.xy
    dcl_color_pp v3
    dcl vPos.y
    dcl_2d s0
    dcl_2d s6
    frc r0.x, c27.w
    cmp r0.y, -r0.x, c1.x, c1.y
    add r0.x, -r0.x, c27.w
    mov r1.x, c1.x
    cmp r0.y, c27.w, r1.x, r0.y
    add r0.x, r0.y, r0.x
    add r0, r0.x, -c1
    cmp r1.yz, -r0_abs.x, v0.xxyw, c1.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.yzzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld r0, r0, s6
    frc r0.y, c26.x
    cmp r0.z, -r0.y, c1.x, c1.y
    add r0.y, -r0.y, c26.x
    cmp r0.z, c26.x, r1.x, r0.z
    add r0.y, r0.z, r0.y
    add r1, r0.y, -c1
    cmp r0.yz, -r1_abs.x, v0.xxyw, c1.x
    cmp r0.yz, -r1_abs.y, v0.xzww, r0
    cmp r0.yz, -r1_abs.z, v1.xxyw, r0
    cmp r0.yz, -r1_abs.w, v1.xzww, r0
    texld_pp r1, r0.yzzw, s0
    mul_pp r0.y, r1.w, c16.w
    mul_pp r0.y, r0.y, v3.w
    mul_pp r0.y, r0.y, c21.x
    mul_pp r0.w, r0.x, r0.y
    add r1.w, c0.x, vPos.y
    mov r2.x, c86.x
    mad r1.w, r1.w, c24.w, -r2.x
    mul_sat_pp r1.w, r1.w, c86.y
    lrp_pp r2.xyz, r1.w, r1, c1.y
    mul_pp r1.xyz, r2, c16
    mul_pp r0.xyz, r1, v3
    mul_pp r0, r0, c89
    min_pp r1, r0, c0.y
    mul_pp r0.xyz, c75, v2.y
    mad_pp oC0.xyz, r1, v2.x, r0
    mov_pp oC0.w, r1.w

// approximately 39 instruction slots used (2 texture, 37 arithmetic)
