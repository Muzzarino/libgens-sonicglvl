//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   sampler2D g_Source;
//   sampler2D g_SourceLow;
//   float4 g_ViewportSize;
//
//
// Registers:
//
//   Name           Reg   Size
//   -------------- ----- ----
//   g_ViewportSize c24      1
//   g_Source       s0       1
//   g_SourceLow    s1       1
//

    ps_3_0
    def c0, 0.527836978, -0.085868001, -0.0400880016, 0.536086977
    def c1, -0.670445025, -0.179949, -0.419418007, -0.616038978
    def c2, 0.440452993, -0.0639398992, -0.757088006, 0.349334002
    def c3, 2.29847598, 2.74351597, 0.574618995, 0.685878992
    def c4, -0.5, 0.100000001, 0.300000012, -1
    def c5, 2, -1, 10, 0.400000006
    def c6, 1, 0, -0.800000012, 0.800000012
    def c7, 2.11134791, -0.343472004, -0.160352007, 2.14434791
    def c8, -2.6817801, -0.719796002, -1.67767203, -2.46415591
    def c9, 1.76181197, -0.255759597, -3.02835202, 1.39733601
    dcl_texcoord v0.xy
    dcl_2d s0
    dcl_2d s1
    texld r0, v0, s0
    mad r0.x, r0.w, c5.x, c5.y
    cmp r0.x, r0.w, r0.x, c4.w
    add r0.y, r0.x, c4.w
    mul r0.x, r0.x, c5.z
    cmp r0.x, r0.y, c5.z, r0_abs.x
    add r0.y, r0.w, c4.x
    cmp r0.y, r0.y, c4.y, c4.z
    mul r0.z, r0.y, r0.x
    mad r0.x, r0.x, r0.y, c4.w
    mul r0.y, r0.y, r0.z
    mul r1.xy, r0.z, c24.zwzw
    mul r0.y, r0.y, c5.w
    mul r0.yz, r0.y, c24.xzww
    mad r2, r0.yzyz, c7, v0.xyxy
    mul r3, r2.xyxx, c6.xxyy
    mul r2, r2.zwxx, c6.xxyy
    texldl r2, r2, s1
    texldl r3, r3, s1
    mad r4, r1.xyxy, c0, v0.xyxy
    mul r5, r4.xyxx, c6.xxyy
    mul r4, r4.zwxx, c6.xxyy
    texldl r4, r4, s0
    texldl r5, r5, s0
    mad r1.z, r5.w, c5.x, c5.y
    cmp r1.z, r5.w, r1.z, c4.w
    add r1.w, r1.z, c6.z
    cmp r1.z, r1.w, c6.w, r1_abs.z
    lrp r6, r1.z, r3, r5
    add r1.z, -r0.w, r6.w
    mad r1.w, r6.w, c5.x, c5.y
    cmp r3.w, r1.z, -c4.w, r1_abs.w
    mul r3.xyz, r3.w, r6
    mul r5, c6.xxyy, v0.xyxx
    texldl r6, r5, s0
    texldl r5, r5, s1
    mad r1.z, r6.w, c5.x, c5.y
    cmp r1.z, r6.w, r1.z, c4.w
    add r1.w, r1.z, c6.z
    cmp r1.z, r1.w, c6.w, r1_abs.z
    lrp r7, r1.z, r5, r6
    mad r1.z, r7.w, c5.x, c5.y
    add r1.w, -r0.w, r7.w
    cmp r5.w, r1.w, -c4.w, r1_abs.z
    mul r5.xyz, r5.w, r7
    add r3, r3, r5
    mad r1.z, r4.w, c5.x, c5.y
    cmp r1.z, r4.w, r1.z, c4.w
    add r1.w, r1.z, c6.z
    cmp r1.z, r1.w, c6.w, r1_abs.z
    lrp r6, r1.z, r2, r4
    add r1.z, -r0.w, r6.w
    mad r1.w, r6.w, c5.x, c5.y
    cmp r2.w, r1.z, -c4.w, r1_abs.w
    mul r2.xyz, r2.w, r6
    add r2, r2, r3
    mad r3, r0.yzyz, c8, v0.xyxy
    mul r4, r3.xyxx, c6.xxyy
    mul r3, r3.zwxx, c6.xxyy
    texldl r3, r3, s1
    texldl r4, r4, s1
    mad r6, r1.xyxy, c1, v0.xyxy
    mul r7, r6.xyxx, c6.xxyy
    mul r6, r6.zwxx, c6.xxyy
    texldl r6, r6, s0
    texldl r7, r7, s0
    mad r1.z, r7.w, c5.x, c5.y
    cmp r1.z, r7.w, r1.z, c4.w
    add r1.w, r1.z, c6.z
    cmp r1.z, r1.w, c6.w, r1_abs.z
    lrp r8, r1.z, r4, r7
    add r1.z, -r0.w, r8.w
    mad r1.w, r8.w, c5.x, c5.y
    cmp r4.w, r1.z, -c4.w, r1_abs.w
    mul r4.xyz, r4.w, r8
    add r2, r2, r4
    mad r1.z, r6.w, c5.x, c5.y
    cmp r1.z, r6.w, r1.z, c4.w
    add r1.w, r1.z, c6.z
    cmp r1.z, r1.w, c6.w, r1_abs.z
    lrp r4, r1.z, r3, r6
    add r1.z, -r0.w, r4.w
    mad r1.w, r4.w, c5.x, c5.y
    cmp r3.w, r1.z, -c4.w, r1_abs.w
    mul r3.xyz, r3.w, r4
    add r2, r2, r3
    mad r3, r0.yzyz, c9, v0.xyxy
    mad r4.xy, r0.yzzw, c3, v0
    mul r6, r3.xyxx, c6.xxyy
    mul r3, r3.zwxx, c6.xxyy
    texldl r3, r3, s1
    texldl r6, r6, s1
    mad r7, r1.xyxy, c2, v0.xyxy
    mad r1.xy, r1, c3.zwzw, v0
    mul r8, r7.xyxx, c6.xxyy
    mul r7, r7.zwxx, c6.xxyy
    texldl r7, r7, s0
    texldl r8, r8, s0
    mad r0.y, r8.w, c5.x, c5.y
    cmp r0.y, r8.w, r0.y, c4.w
    add r0.z, r0.y, c6.z
    cmp r0.y, r0.z, c6.w, r0_abs.y
    lrp r9, r0.y, r6, r8
    add r0.y, -r0.w, r9.w
    mad r0.z, r9.w, c5.x, c5.y
    cmp r6.w, r0.y, -c4.w, r0_abs.z
    mul r6.xyz, r6.w, r9
    add r2, r2, r6
    mad r0.y, r7.w, c5.x, c5.y
    cmp r0.y, r7.w, r0.y, c4.w
    add r0.z, r0.y, c6.z
    cmp r0.y, r0.z, c6.w, r0_abs.y
    lrp r6, r0.y, r3, r7
    add r0.y, -r0.w, r6.w
    mad r0.z, r6.w, c5.x, c5.y
    cmp r3.w, r0.y, -c4.w, r0_abs.z
    mul r3.xyz, r3.w, r6
    add r2, r2, r3
    mov r4.zw, c6.y
    texldl r3, r4, s1
    mov r1.zw, c6.y
    texldl r1, r1, s0
    mad r0.y, r1.w, c5.x, c5.y
    cmp r0.y, r1.w, r0.y, c4.w
    add r0.z, r0.y, c6.z
    cmp r0.y, r0.z, c6.w, r0_abs.y
    lrp r4, r0.y, r3, r1
    add r0.y, -r0.w, r4.w
    mad r0.z, r4.w, c5.x, c5.y
    cmp r1.w, r0.y, -c4.w, r0_abs.z
    mul r1.xyz, r1.w, r4
    add r1, r1, r2
    cmp r0, r0.x, r1, r5
    rcp r1.x, r0.w
    mul_pp oC0, r0, r1.x

// approximately 151 instruction slots used (33 texture, 118 arithmetic)