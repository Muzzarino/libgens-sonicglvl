//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float2 mrgFresnelParam;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgInShadowScale;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgFresnelParam                       c62      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampEnv                               s5       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, -2, 3, 0.25, 4
    def c1, 0.5, 0, 1, -2
    def c2, -1, 1, 0, 0.5
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3 v2.xyz
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_2d s0
    dcl_2d s5
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c0.x, c0.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov r1.z, c1.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c1.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c1.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c1.y
    add r1.y, r1.x, -v3.w
    cmp r2.z, r1.y, c1.y, r1.x
    mov r2.xyw, v3
    texldp_pp r2, r2, s13
    max r1.x, v4.z, c1.y
    add r1.y, r1.x, -v4.w
    cmp r3.z, r1.y, c1.y, r1.x
    mov r3.xyw, v4
    texldp_pp r3, r3, s7
    min_pp r1.x, r3.x, r2.x
    lrp_pp r1.y, v5.z, c1.z, r3.x
    lrp_pp r2.x, v5.z, c1.z, r1.x
    rcp r1.x, v3.w
    mul r1.xw, r1.x, v3.xyzy
    mad r1.xw, r1, -c1.w, -c1.z
    abs_sat r1.xw, r1
    add_sat r1.xw, r1, -c65.x
    mul r1.xw, r1, c65.y
    max r2.y, r1.x, r1.w
    lrp_pp r1.x, r2.y, c1.z, r2.x
    lrp_pp r3.x, r2.y, c1.z, r1.y
    mul r1.x, r1.x, c77.w
    nrm r2, v2.xyzx
    dp3_pp r1.y, r2.wyzw, -c10
    mul r3.yzw, r1.y, c36.xxyz
    mul_pp r3.yzw, r1.x, r3
    cmp_pp r3.yzw, r1.y, r3, c1.y
    mul_pp r4.xyz, c58.w, c58
    dp3_pp r0.y, r2.wyzw, -r0.yzww
    mul_pp r4.xyz, r0.y, r4
    cmp_pp r0.yzw, r0.y, r4.xxyz, c1.y
    mad_pp r0.xyz, r0.x, r0.yzww, r3.yzww
    mov r4.xyz, c79
    add r3.yzw, -r4.xxyz, c80.xxyz
    mad_pp r4.xyz, r2.wyzw, c1.x, c1.x
    mad r3.yzw, r4.y, r3, c79.xxyz
    mul_pp r5.xyz, r2.wyzw, r2.wyzw
    mul r3.yzw, r3, r5.y
    mov r6.xyz, c77
    add r6.xyz, -r6, c78
    mad r4.xyw, r4.x, r6.xyzz, c77.xyzz
    mad_pp r3.yzw, r5.x, r4.xxyw, r3
    mov r6.xyz, c81
    add r4.xyw, -r6.xyzz, c82.xyzz
    mad r4.xyz, r4.z, r4.xyww, c81
    mad_pp r3.yzw, r5.z, r4.xxyz, r3
    mul_pp r4.xyz, r3.yzww, c17
    mul r4.xyz, r4, c70.w
    mad r3.yzw, r3, c17.xxyz, -r4.xxyz
    mad_pp r3.xyz, r3.x, r3.yzww, r4
    add_pp r0.xyz, r0, r3
    mul_pp r0.xyz, r0, c16
    add_pp r3, c22.xyzx, -v1.xyzx
    dp3_pp r0.w, r3.yzww, r3.yzww
    rsq_pp r0.w, r0.w
    mul r3, r0.w, r3
    dp3 r0.w, r3.yzww, r2.yzww
    add r1.y, r0.w, r0.w
    mov_sat_pp r0.w, r0.w
    add_pp r0.w, -r0.w, c1.z
    mad r2, r1.y, r2, -r3
    mad r3, r2.wyzw, c2.xxyz, c2.zzzw
    mul r4, r2, c2.yxxz
    cmp r2, r2.z, r3, r4
    add r1.y, r2.z, c1.z
    rcp r1.y, r1.y
    mad r1.yw, r2.xyzx, r1.y, c1.z
    mad_pp r2.x, r1.w, c0.z, r2.w
    mul_pp r2.y, r1.y, c1.x
    texld_pp r2, r2, s5
    mul r3.xyz, r2, c63.x
    mad_pp r2.xyz, r3, r2.w, r2
    mul r1.y, c64.z, c64.x
    mov r3.xz, c64
    mad r1.w, r3.x, -r3.z, r3.z
    mad_pp r1.x, r1.x, r1.w, r1.y
    mul_pp r1.xyw, r1.x, r2.xyzz
    mul_pp r2.x, r0.w, r0.w
    mul_pp r2.x, r2.x, r2.x
    mul_pp r0.w, r0.w, r2.x
    lrp_pp r2.x, r0.w, r1.z, c62.x
    mul_pp r0.w, r2.x, c62.y
    mul_pp r1.xyz, r0.w, r1.xyww
    texld_pp r2, v0, s0
    mad_pp r0.xyz, r0, r2, r1
    dp3_pp r1.x, r1, r1
    mul_pp r1.y, r2.w, c16.w
    mul_pp r1.y, r1.y, r1.y
    max_pp r2.x, r1.y, r1.x
    rsq_pp r1.x, r2.x
    rcp_pp r1.x, r1.x
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c0.w
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 126 instruction slots used (4 texture, 122 arithmetic)