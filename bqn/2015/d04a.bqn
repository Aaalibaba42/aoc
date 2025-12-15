md5 ← "libcrypto.so" •FFI "*u8"‿"MD5"‿"*u8:c8"‿"u64"‿"&u8"
s ← •Import "../bqn-libs/strings.bqn"

input ← •FChars "d04.input"

CMd5 ← ¯1⊑·Md5 s.ToBytes‿≠‿(16⊸⥊⟜0) {𝕎𝕩}¨<
Inc ← 1⊸+
Solution ← ∨´0≠1↓·⌽∘∾·16⊸(⌊∘÷˜⋈|)¨ 3↑ · CMd5 input∾•Fmt

•Show Inc •_while_ Solution 0

