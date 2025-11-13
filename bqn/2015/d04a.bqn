input ← •FChars "d04.input"

md5 ← "libcrypto.so" •FFI "*u8"‿"MD5"‿"*u8:c8"‿"u64"‿"&u8"
s ← •Import "./bqn-libs/strings.bqn"

ComputeMd5 ← {
  digest ← 16⥊0
  ptr‿buf ← Md5 ⟨ s.ToBytes 𝕩, ≠𝕩, digest ⟩
  buf
}

•Show <⁼1⊐˜((5⥊0)≡1↓·⌽·∾·((⌊÷⟜16)⋈(16⊸|))¨ 3↑ · ComputeMd5 input∾•Fmt)¨↕1000000

