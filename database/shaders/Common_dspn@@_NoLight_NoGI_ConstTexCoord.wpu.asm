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
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_ViewportSize;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgPlayableParam;
//   sampler2D sampDif;
//   sampler2D sampNrm;
//   sampler2D sampPow;
//   sampler2D sampSpe;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   g_ViewportSize                        c24      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   mrgPlayableParam                      c86      1
//   g_ForceAlphaColor                     c89      1
//   sampDif                               s0       1
//   sampSpe                               s1       1
//   sampPow                               s2       1
//   sampNrm                               s3       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 0.5, 2, -1, 1
    def c1, 0, -2, 3, 1024
    def c2, 500, 5, 4, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_color_pp v8
    dcl vPos.y
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
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
    mad_pp r1.y, r0.x, c1.y, c1.z
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.w, c0.w
    add r0.x, r1.w, -c61.x
    cmp_pp r0.x, r0.x, c0.w, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.w
    cmp_pp r1.x, -c61.x, r1.w, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c1.x
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c1.x, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c1.x
    add r1.z, r1.y, -v4.w
    cmp r2.z, r1.z, c1.x, r1.y
    mov r2.xyw, v4
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v5.z, c0.w, r2.x
    lrp_pp r1.y, v5.z, c0.w, r3.x
    rcp r1.z, v3.w
    mul r1.zw, r1.z, v3.xyxy
    mad r1.zw, r1, c0.y, c0.z
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.x, r1.z, r1.w
    lrp_pp r3.x, r2.x, c0.w, r1.y
    lrp_pp r3.y, r2.x, c0.w, r1.x
    mul_pp r1.x, r3.x, c77.w
    nrm_pp r2.xyz, v7
    texld_pp r4, v0, s3
    mul_pp r4.x, r4.w, r4.x
    mad_pp r1.yz, r4.xxyw, c0.y, c0.z
    mul_pp r2.xyz, r2, r1.z
    nrm_pp r4.xyz, v6
    mad_pp r2.xyz, r1.y, r4, r2
    dp2add_pp r1.y, r1.yzzw, -r1.yzzw, c0.w
    rsq_pp r1.y, r1.y
    rcp_pp r1.y, r1.y
    nrm_pp r4.xyz, v2
    mad_pp r1.yzw, r1.y, r4.xxyz, r2.xxyz
    dp3_pp r2.x, r1.yzww, -c10
    mul r2.yzw, r2.x, c36.xxyz
    mul_pp r2.yzw, r1.x, r2
    cmp_pp r2.xyz, r2.x, r2.yzww, c1.x
    dp3_pp r2.w, r1.yzww, -r0.yzww
    mul_pp r3.xzw, c58.w, c58.xyyz
    mul_pp r3.xzw, r2.w, r3
    cmp_pp r3.xzw, r2.w, r3, c1.x
    mad_pp r2.xyz, r0.x, r3.xzww, r2
    mad_pp r3.xzw, r1.yyzw, c0.x, c0.x
    mov r4.xyz, c79
    add r4.xyz, -r4, c80
    mad r4.xyz, r3.z, r4, c79
    mul_pp r5.xyz, r1.yzww, r1.yzww
    mul r4.xyz, r4, r5.y
    mov r6.xyz, c77
    add r6.xyz, -r6, c78
    mad r6.xyz, r3.x, r6, c77
    mad_pp r4.xyz, r5.x, r6, r4
    mov r6.xyz, c81
    add r5.xyw, -r6.xyzz, c82.xyzz
    mad r3.xzw, r3.w, r5.xyyw, c81.xyyz
    mad_pp r3.xzw, r5.z, r3, r4.xyyz
    mul_pp r4.xyz, r3.xzww, c17
    mul r4.xyz, r4, c70.w
    mad r3.xzw, r3, c17.xyyz, -r4.xyyz
    mad_pp r3.xyz, r3.y, r3.xzww, r4
    add_pp r2.xyz, r2, r3
    mul_pp r2.xyz, r2, c16
    add_pp r3.xyz, c22, -v1
    dp3_pp r2.w, r3, r3
    rsq_pp r2.w, r2.w
    mad_pp r0.yzw, r3.xxyz, r2.w, -r0
    mad_pp r3.xyz, r3, r2.w, -c10
    nrm_pp r4.xyz, r3
    dp3_sat_pp r2.w, r4, r1.yzww
    nrm_pp r3.xyz, r0.yzww
    dp3_sat_pp r0.y, r3, r1.yzww
    texld_pp r3, v0, s2
    mul_pp r0.zw, r3.x, c20.xyyz
    mul_pp r0.zw, r0, c2.xyxy
    max_pp r1.y, r0.z, c0.w
    min r0.z, r1.y, c1.w
    pow r1.y, r0.y, r0.z
    pow r1.z, r2.w, r0.z
    mul_pp r3.xyz, c59.w, c59
    mul_pp r3.xyz, r0.w, r3
    mul_pp r0.yzw, r0.w, c37.xxyz
    mul_pp r0.yzw, r1.z, r0
    mul_pp r1.yzw, r1.y, r3.xxyz
    mul_pp r1.yzw, r0.x, r1
    mad_pp r0.xyz, r0.yzww, r1.x, r1.yzww
    mul_pp r0.xyz, r0, c18
    texld_pp r1, v0, s1
    mul_pp r0.xyz, r0, r1
    mul_pp r0.xyz, r0, v2.w
    add r0.w, c0.x, vPos.y
    mov r1.x, c86.x
    mad r0.w, r0.w, c24.w, -r1.x
    mul_sat_pp r0.w, r0.w, c86.y
    texld_pp r1, v0, s0
    add_pp r1.xyz, r1, c0.z
    mul_pp r1.w, r1.w, c16.w
    mul_pp r1.w, r1.w, v8.w
    mul_pp r3.w, r1.w, c21.x
    mad_pp r1.xyz, r1, r0.w, c0.w
    mad_pp r0.xyz, r2, r1, r0
    mul_pp r3.xyz, r0, v8
    mul_pp r0, r3, c89
    min_pp r1, r0, c2.z
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 149 instruction slots used (6 texture, 143 arithmetic)