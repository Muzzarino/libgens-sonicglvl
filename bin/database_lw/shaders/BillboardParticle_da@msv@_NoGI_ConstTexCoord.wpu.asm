//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D g_DepthSampler;
//   float4 g_ForceAlphaColor;
//   row_major float4x4 g_MtxInvProjection;
//   float4 g_ParticleColorScale;
//   float4 g_ParticleParam;
//   float4 g_ViewportSize;
//   sampler2D sampDif;
//
//
// Registers:
//
//   Name                 Reg   Size
//   -------------------- ----- ----
//   g_MtxInvProjection   c4       4
//   g_ViewportSize       c24      1
//   g_ForceAlphaColor    c89      1
//   g_ParticleParam      c150     1
//   g_ParticleColorScale c151     1
//   sampDif              s0       1
//   g_DepthSampler       s12      1
//

    ps_3_0
    def c0, 0.5, -0.5, 4, 0
    def c1, 0.00389099144, 1.51991853e-005, 0.99609381, 0
    dcl_texcoord v0
    dcl_texcoord1 v1
    dcl_color_pp v2
    dcl_texcoord2_pp v3
    dcl_2d s0
    dcl_2d s12
    rcp r0.x, v1.z
    mad r1.x, v1.x, r0.x, c24.z
    mad r1.y, v1.y, r0.x, -c24.w
    mad r0.xy, r1, c0, c0.x
    mul r0.zw, r1.y, c5
    mad r0.zw, r1.x, c4, r0
    texld r1, r0, s12
    dp3 r0.x, r1.xyww, c1
    mad r0.xy, r0.x, c6.zwzw, r0.zwzw
    add r0.xy, r0, c7.zwzw
    rcp r0.y, r0.y
    mad r0.x, r0.x, -r0.y, v1.w
    rcp r0.y, c150.z
    mul_sat r0.x, r0.y, r0.x
    texld_pp r1, v0.zwzw, s0
    texld_pp r2, v0, s0
    mov_pp r3, v3
    add_pp r3, -r3, v2
    mad_pp r2, r2.y, r3, v3
    mul_pp r0.y, r1.w, r2.w
    mul_pp r1.xyz, r2, c151
    mul_pp r1.w, r0.x, r0.y
    mul_pp r0, r1, c89
    min_pp oC0, r0, c0.z

// approximately 24 instruction slots used (3 texture, 21 arithmetic)