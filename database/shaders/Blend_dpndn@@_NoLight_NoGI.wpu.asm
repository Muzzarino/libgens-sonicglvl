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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgTexcoordIndex[4];
//   sampler2D sampDif0;
//   sampler2D sampDif1;
//   sampler2D sampNrm0;
//   sampler2D sampNrm1;
//   sampler2D sampPower0;
//
//
// Registers:
//
//   Name                       Reg   Size
//   -------------------------- ----- ----
//   mrgGlobalLight_Direction   c10      1
//   g_Diffuse                  c16      1
//   g_Ambient                  c17      1
//   g_Specular                 c18      1
//   g_PowerGlossLevel          c20      1
//   g_EyePosition              c22      1
//   g_EyeDirection             c23      1
//   mrgTexcoordIndex           c26      2
//   mrgGlobalLight_Diffuse     c36      1
//   mrgGlobalLight_Specular    c37      1
//   mrgEyeLight_Diffuse        c58      1
//   mrgEyeLight_Specular       c59      1
//   mrgEyeLight_Range          c60      1
//   mrgEyeLight_Attribute      c61      1
//   g_ShadowMapParams          c65      1
//   g_GI0Scale                 c70      1
//   g_LightScatteringColor     c75      1
//   g_aLightField              c77      6
//   g_ForceAlphaColor          c89      1
//   sampDif0                   s0       1
//   sampDif1                   s1       1
//   sampPower0                 s2       1
//   sampNrm0                   s4       1
//   sampNrm1                   s5       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 2, -1, 0.5, -3
    def c1, 500, 5, 1024, 4
    def c2, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6.xyz
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl_color_pp v9.xw
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s4
    dcl_2d s5
    dcl_2d s7
    dcl_2d s13
    frc r0.xy, c27
    cmp r0.zw, -r0.xyxy, c2.x, c2.y
    add r0.xy, -r0, c27
    mov r1.xy, c2
    cmp r0.zw, c27.xyxy, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c2
    add r0, r0.y, -c2
    cmp r1.zw, -r2_abs.x, v0.xyxy, c2.x
    cmp r1.zw, -r2_abs.y, v0, r1
    cmp r1.zw, -r2_abs.z, v1.xyxy, r1
    cmp r1.zw, -r2_abs.w, v1, r1
    texld_pp r2, r1.zwzw, s4
    cmp r1.zw, -r0_abs.x, v0.xyxy, c2.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.zwzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s5
    lrp_pp r3.yzw, v9.x, r0.xxyw, r2.xxyw
    mul_pp r3.x, r3.w, r3.y
    mad_pp r0.xy, r3.xzzw, c0.x, c0.y
    nrm_pp r2.xyz, v8
    mul_pp r2.xyz, r0.y, r2
    nrm_pp r3.xyz, v7
    mad_pp r2.xyz, r0.x, r3, r2
    dp2add_pp r0.x, r0, -r0, c2.y
    rsq_pp r0.x, r0.x
    rcp_pp r0.x, r0.x
    nrm_pp r3.xyz, v3
    mad_pp r0.xyz, r0.x, r3, r2
    mad_pp r2.xyz, r0, c0.z, c0.z
    mov r3.xyz, c77
    add r3.xyz, -r3, c78
    mad r3.xyz, r2.x, r3, c77
    mov r4.xyz, c79
    add r4.xyz, -r4, c80
    mad r2.xyw, r2.y, r4.xyzz, c79.xyzz
    mul_pp r4.xyz, r0, r0
    mul r2.xyw, r2, r4.y
    mad_pp r2.xyw, r4.x, r3.xyzz, r2
    mov r3.xyz, c81
    add r3.xyz, -r3, c82
    mad r3.xyz, r2.z, r3, c81
    mad_pp r2.xyz, r4.z, r3, r2.xyww
    mul_pp r3.xyz, r2, c17
    mul r3.xyz, r3, c70.w
    mad r2.xyz, r2, c17, -r3
    rcp r0.w, v4.w
    mul r1.zw, r0.w, v4.xyxy
    mad r1.zw, r1, c0.x, c0.y
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r0.w, r1.z, r1.w
    max r1.z, v5.z, c2.x
    add r1.w, r1.z, -v5.w
    cmp r4.z, r1.w, c2.x, r1.z
    mov r4.xyw, v5
    texldp_pp r4, r4, s7
    lrp_pp r1.z, v6.z, c2.y, r4.x
    lrp_pp r2.w, r0.w, c2.y, r1.z
    mad_pp r2.xyz, r2.w, r2, r3
    max r1.z, v4.z, c2.x
    add r1.w, r1.z, -v4.w
    cmp r3.z, r1.w, c2.x, r1.z
    mov r3.xyw, v4
    texldp_pp r3, r3, s13
    min_pp r1.z, r4.x, r3.x
    lrp_pp r2.w, v6.z, c2.y, r1.z
    lrp_pp r1.z, r0.w, c2.y, r2.w
    mul_pp r0.w, r1.z, c77.w
    dp3_pp r1.z, r0, -c10
    mul r3.xyz, r1.z, c36
    mul_pp r3.xyz, r0.w, r3
    cmp_pp r3.xyz, r1.z, r3, c2.x
    add r4.xyz, -c22, v2
    dp3 r1.z, r4, r4
    rsq r1.z, r1.z
    mul_pp r4.xyz, r1.z, r4
    rcp r1.z, r1.z
    add r1.z, r1.z, -c60.z
    dp3_pp r1.w, r0, -r4
    mul_pp r5.xyz, c58.w, c58
    mul_pp r5.xyz, r1.w, r5
    cmp_pp r5.xyz, r1.w, r5, c2.x
    add r1.w, -c60.z, c60.w
    rcp r1.w, r1.w
    mul_sat r1.z, r1.w, r1.z
    add_pp r1.z, -r1.z, c2.y
    cmp_pp r1.z, -c61.x, r1.y, r1.z
    dp3_pp r1.w, r4, c23
    add r1.yw, r1, -c61.xxzz
    add_pp r2.w, -c61.z, c61.y
    rcp_pp r2.w, r2.w
    mul_sat_pp r1.w, r1.w, r2.w
    mad_pp r2.w, r1.w, -c0.x, -c0.w
    mul_pp r1.w, r1.w, r1.w
    mul_pp r1.w, r1.w, r2.w
    pow_sat_pp r2.w, r1.w, c61.w
    cmp_pp r1.y, r1.y, c2.y, r2.w
    mul_pp r1.y, r1.y, r1.z
    mad_pp r3.xyz, r1.y, r5, r3
    add_pp r2.xyz, r2, r3
    mul_pp r2.xyz, r2, c16
    add_pp r3.xyz, c22, -v2
    dp3_pp r1.z, r3, r3
    rsq_pp r1.z, r1.z
    mad_pp r4.xyz, r3, r1.z, -r4
    mad_pp r3.xyz, r3, r1.z, -c10
    nrm_pp r5.xyz, r3
    dp3_sat_pp r1.z, r5, r0
    nrm_pp r3.xyz, r4
    dp3_sat_pp r0.x, r3, r0
    frc r3.xyz, c26
    cmp r4.xyz, -r3, c2.x, c2.y
    add r3.xyz, -r3, c26
    cmp r4.xyz, c26, r1.x, r4
    add r3.xyz, r3, r4
    add r4, r3.z, -c2
    cmp r0.yz, -r4_abs.x, v0.xxyw, c2.x
    cmp r0.yz, -r4_abs.y, v0.xzww, r0
    cmp r0.yz, -r4_abs.z, v1.xxyw, r0
    cmp r0.yz, -r4_abs.w, v1.xzww, r0
    texld_pp r4, r0.yzzw, s2
    mul_pp r0.yz, r4.x, c20
    mul_pp r0.yz, r0, c1.xxyw
    max_pp r1.x, r0.y, c2.y
    min r0.y, r1.x, c1.z
    pow r1.x, r0.x, r0.y
    pow r2.w, r1.z, r0.y
    mul_pp r4.xyz, c59.w, c59
    mul_pp r4.xyz, r0.z, r4
    mul_pp r0.xyz, r0.z, c37
    mul_pp r0.xyz, r2.w, r0
    mul_pp r1.xzw, r1.x, r4.xyyz
    mul_pp r1.xyz, r1.xzww, r1.y
    mad_pp r0.xyz, r0, r0.w, r1
    mul_pp r0.xyz, r0, c18
    mul_pp r0.xyz, r0, v3.w
    add r1, r3.x, -c2
    add r3, r3.y, -c2
    cmp r4.xy, -r1_abs.x, v0, c2.x
    cmp r1.xy, -r1_abs.y, v0.zwzw, r4
    cmp r1.xy, -r1_abs.z, v1, r1
    cmp r1.xy, -r1_abs.w, v1.zwzw, r1
    texld_pp r1, r1, s0
    cmp r4.xy, -r3_abs.x, v0, c2.x
    cmp r3.xy, -r3_abs.y, v0.zwzw, r4
    cmp r3.xy, -r3_abs.z, v1, r3
    cmp r3.xy, -r3_abs.w, v1.zwzw, r3
    texld_pp r3, r3, s1
    lrp_pp r4, v9.x, r3, r1
    mad_pp r0.xyz, r2, r4, r0
    mul_pp r1.x, r4.w, c16.w
    mul_pp r0.w, r1.x, v9.w
    mul_pp r0, r0, c89
    min_pp r1, r0, c1.w
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 177 instruction slots used (7 texture, 170 arithmetic)