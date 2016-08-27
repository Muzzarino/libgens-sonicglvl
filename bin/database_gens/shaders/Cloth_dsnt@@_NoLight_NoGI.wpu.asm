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
//   float4 g_TransColorMask;
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
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampSpec;
//   sampler2D sampTrans;
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
//   g_TransColorMask           c150     1
//   sampDif                    s0       1
//   sampSpec                   s1       1
//   sampNrm                    s3       1
//   sampTrans                  s4       1
//   g_VerticalShadowMapSampler s7       1
//   g_ShadowMapSampler         s13      1
//

    ps_3_0
    def c0, 500, 5, -2, 3
    def c1, 2, -1, 0.5, 1024
    def c2, 0.800000012, 0.0500000007, 4, 0
    def c3, 0, 1, 2, 3
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_texcoord2 v2.xyz
    dcl_texcoord3_pp v3.xyz
    dcl_texcoord4 v4
    dcl_texcoord6 v5
    dcl_texcoord5_pp v6
    dcl_texcoord7 v7.xyz
    dcl_texcoord8 v8.xyz
    dcl vFace
    dcl_2d s0
    dcl_2d s1
    dcl_2d s3
    dcl_2d s4
    dcl_2d s7
    dcl_2d s13
    frc r0.xy, c27
    cmp r0.zw, -r0.xyxy, c3.x, c3.y
    add r0.xy, -r0, c27
    mov r1.xy, c3
    cmp r0.zw, c27.xyxy, r1.x, r0
    add r0.xy, r0.zwzw, r0
    add r2, r0.x, -c3
    add r0, r0.y, -c3
    cmp r1.zw, -r2_abs.x, v0.xyxy, c3.x
    cmp r1.zw, -r2_abs.y, v0, r1
    cmp r1.zw, -r2_abs.z, v1.xyxy, r1
    cmp r1.zw, -r2_abs.w, v1, r1
    texld_pp r2, r1.zwzw, s3
    mul_pp r2.x, r2.w, r2.x
    mad_pp r1.zw, r2.xyxy, c1.x, c1.y
    nrm_pp r2.xyz, v8
    mul_pp r2.xyz, r1.w, r2
    nrm_pp r3.xyz, v7
    mad_pp r2.xyz, r1.z, r3, r2
    dp2add_pp r1.z, r1.zwzw, -r1.zwzw, c3.y
    rsq_pp r1.z, r1.z
    rcp_pp r1.z, r1.z
    cmp r3.xyz, vFace, v3, -v3
    nrm_pp r4.xyz, r3
    mad_pp r2.xyz, r1.z, r4, r2
    mad_pp r3.xyz, r2, c1.z, c1.z
    mov r4.xyz, c77
    add r4.xyz, -r4, c78
    mad r4.xyz, r3.x, r4, c77
    mov r5.xyz, c79
    add r5.xyz, -r5, c80
    mad r3.xyw, r3.y, r5.xyzz, c79.xyzz
    mul_pp r5.xyz, r2, r2
    mul r3.xyw, r3, r5.y
    mad_pp r3.xyw, r5.x, r4.xyzz, r3
    mov r4.xyz, c81
    add r4.xyz, -r4, c82
    mad r4.xyz, r3.z, r4, c81
    mad_pp r3.xyz, r5.z, r4, r3.xyww
    mul_pp r4.xyz, r3, c17
    mul r4.xyz, r4, c70.w
    mad r3.xyz, r3, c17, -r4
    rcp r1.z, v4.w
    mul r1.zw, r1.z, v4.xyxy
    mad r1.zw, r1, c1.x, c1.y
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.w, r1.z, r1.w
    max r1.z, v5.z, c3.x
    add r1.w, r1.z, -v5.w
    cmp r5.z, r1.w, c3.x, r1.z
    mov r5.xyw, v5
    texldp_pp r5, r5, s7
    lrp_pp r1.z, v6.z, c3.y, r5.x
    lrp_pp r3.w, r2.w, c3.y, r1.z
    mad_pp r3.xyz, r3.w, r3, r4
    cmp r1.zw, -r0_abs.x, v0.xyxy, c3.x
    cmp r0.xy, -r0_abs.y, v0.zwzw, r1.zwzw
    cmp r0.xy, -r0_abs.z, v1, r0
    cmp r0.xy, -r0_abs.w, v1.zwzw, r0
    texld_pp r0, r0, s4
    max r1.z, v4.z, c3.x
    add r1.w, r1.z, -v4.w
    cmp r4.z, r1.w, c3.x, r1.z
    mov r4.xyw, v4
    texldp_pp r4, r4, s13
    min_pp r1.z, r5.x, r4.x
    lrp_pp r3.w, v6.z, c3.y, r1.z
    lrp_pp r1.z, r2.w, c3.y, r3.w
    mul r1.z, r1.z, c77.w
    add_pp r4.xyz, c22, -v2
    dp3_pp r1.w, r4, r4
    rsq_pp r1.w, r1.w
    mul_pp r5.xyz, r1.w, r4
    dp3_sat_pp r2.w, r5, c10
    mul_pp r2.w, r1.z, r2.w
    mad_pp r3.w, r2.w, c2.x, c2.y
    mul_pp r5.xyz, r3.w, c36
    mul_pp r5.xyz, r5, c16
    mul_pp r3.w, v6.w, v6.w
    mul_pp r5.xyz, r3.w, r5
    mul_pp r3.w, r3.w, r3.w
    mul_pp r5.xyz, r0.w, r5
    mul_pp r6.xyz, r1.z, c36
    mul_pp r7.xyz, r1.z, c37
    add_pp r1.z, -c61.z, c61.y
    rcp_pp r1.z, r1.z
    add r8.xyz, -c22, v2
    dp3 r4.w, r8, r8
    rsq r4.w, r4.w
    mul_pp r8.xyz, r4.w, r8
    rcp r4.w, r4.w
    add r4.w, r4.w, -c60.z
    dp3_pp r5.w, r8, c23
    add_pp r5.w, r5.w, -c61.z
    mul_sat_pp r1.z, r1.z, r5.w
    mad_pp r5.w, r1.z, c0.z, c0.w
    mul_pp r1.z, r1.z, r1.z
    mul_pp r1.z, r1.z, r5.w
    pow_sat_pp r5.w, r1.z, c61.w
    add r1.z, r1.y, -c61.x
    cmp_pp r1.z, r1.z, c3.y, r5.w
    add r5.w, -c60.z, c60.w
    rcp r5.w, r5.w
    mul_sat r4.w, r4.w, r5.w
    add_pp r4.w, -r4.w, c3.y
    cmp_pp r1.y, -c61.x, r1.y, r4.w
    mul_pp r1.y, r1.z, r1.y
    mul_pp r9.xyz, c58.w, c58
    mul_pp r9.xyz, r1.y, r9
    dp3_pp r1.z, r2, -r8
    mad_pp r8.xyz, r4, r1.w, -r8
    mad_pp r4.xyz, r4, r1.w, -c10
    nrm_pp r10.xyz, r4
    dp3_sat_pp r1.w, r10, r2
    nrm_pp r4.xyz, r8
    dp3_sat_pp r4.x, r4, r2
    dp3_pp r2.x, r2, -c10
    mad_pp r2.y, r1.z, c1.z, c1.z
    mul_pp r2.y, r2.y, r2.y
    mul_pp r4.yzw, r9.xxyz, r2.y
    mad_pp r2.y, r2.x, c1.z, c1.z
    mul_pp r2.y, r2.y, r2.y
    mad_pp r4.yzw, r2.y, r6.xxyz, r4
    mad_pp r4.yzw, r4, c16.xxyz, r5.xxyz
    add_pp r3.xyz, r3, r4.yzww
    mad_pp r2.y, r1.z, -c1.z, c1.z
    mov_sat r1.z, r1.z
    mul_pp r2.y, r2.y, r2.y
    mul_pp r4.yzw, r9.xxyz, r2.y
    mad_pp r2.y, r2.x, -c1.z, c1.z
    mov_sat r2.x, r2.x
    mul_pp r2.y, r2.y, r2.y
    mad_pp r4.yzw, r2.y, r6.xxyz, r4
    mul_pp r4.yzw, r4, c16.xxyz
    mul_pp r0.xyz, r0, r4.yzww
    mul_pp r0.xyz, r0, c150
    frc r2.yz, c26.xxzw
    cmp r4.yz, -r2, c3.x, c3.y
    add r2.yz, -r2, c26.xxzw
    cmp r4.yz, c26.xxzw, r1.x, r4
    add r2.yz, r2, r4
    add r5, r2.y, -c3
    add r6, r2.z, -c3
    cmp r2.yz, -r5_abs.x, v0.xxyw, c3.x
    cmp r2.yz, -r5_abs.y, v0.xzww, r2
    cmp r2.yz, -r5_abs.z, v1.xxyw, r2
    cmp r2.yz, -r5_abs.w, v1.xzww, r2
    texld_pp r5, r2.yzzw, s0
    mad_pp r0.xyz, r3, r5, r0
    mul_pp r5.w, r5.w, c16.w
    mul_pp r3.xyz, c59.w, c59
    mul_pp r3.xyz, r1.y, r3
    mov r1.xy, c0
    mul_pp r1.xy, r1, c20.yzzw
    max_pp r2.y, r1.x, c3.y
    min r1.x, r2.y, c1.w
    pow_pp r2.y, r4.x, r1.x
    mul_pp r3.xyz, r2.y, r3
    mul r3.xyz, r1.z, r3
    mul r3.xyz, r1.y, r3
    pow_pp r2.y, r1.w, r1.x
    pow r4.x, r2.w, r1.x
    mad r1.x, r4.x, c2.x, c2.y
    mul_pp r1.xzw, r1.x, c37.xyyz
    mul_pp r2.yzw, r2.y, r7.xxyz
    mul r2.xyz, r2.x, r2.yzww
    mad_pp r2.xyz, r2, r1.y, r3
    mul_pp r3.xyz, r1.y, c18
    mul_pp r1.xyz, r1.xzww, r3
    mul_pp r1.xyz, r3.w, r1
    mul_pp r1.xyz, r0.w, r1
    mad_pp r1.xyz, r2, c18, r1
    cmp r2.xy, -r6_abs.x, v0, c3.x
    cmp r2.xy, -r6_abs.y, v0.zwzw, r2
    cmp r2.xy, -r6_abs.z, v1, r2
    cmp r2.xy, -r6_abs.w, v1.zwzw, r2
    texld_pp r2, r2, s1
    mad_pp r5.xyz, r1, r2, r0
    mul_pp r0, r5, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v6.y
    mad_pp oC0.xyz, r1, v6.x, r0
    mov_pp oC0.w, r1.w

// approximately 204 instruction slots used (6 texture, 198 arithmetic)