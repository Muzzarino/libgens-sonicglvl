//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D g_Source;
//   sampler2D s3;
//
//
// Registers:
//
//   Name         Reg   Size
//   ------------ ----- ----
//   g_Source     s0       1
//   s3           s3       1
//

    ps_3_0
    def c0, 1, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s3
    texld_pp r0, v0, s3
    texld_pp r1, v0, s0
    add_pp oC0.xyz, r0, r1
    mov_pp oC0.w, c0.x

// approximately 4 instruction slots used (2 texture, 2 arithmetic)