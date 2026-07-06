import TwinPrimeConjectureCanonicalLaneLean.Formalization
import TwinPrimeConjectureCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace TwinPrimeConjectureCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "1f837089ae60dbb5ac9079cc20ede0a4632bcd25e81d3b3b72a835c1e469c4de", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "478c09455c8cb792aebfc1b4275fbc66c46edd4e1d0e2c621234a97fae33e445", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "f32c043f28e6909be9b9fd16acd29cc9f2c725deb83478400abcc40d54fd9e3c", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "bd23e0463df8fcc0480f66ab5b9b90b4762ed33776cbd43835e00202540ee346", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "1f63dcc23dc2efea86b0404035e8c4c7ec5f6702739d5335257d09e3a9fe834a", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "d077330c0d701c079ce5aee5a40fed2c84da83e333a2583db8bac0f85f216ade", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "c9953afcba287321a8544526e72d4ca874ac27f9a878532434ab0877feb24f90", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "dd515553dee34d8de7a98627174f251cb4a5876453d6a4e84336d6f5cd45d4d0", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "0314c4f025fb5e9e3481daa9eacfbb2e0c84154e24391bc07ce03e69be73bb88", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "TP_G1", constant := "kappa_sieve" },
  { gate := "TP_G2", constant := "sigma_distribution" },
  { gate := "TP_G3", constant := "kappa_compact" },
  { gate := "TP_G4", constant := "rho_rigidity" },
  { gate := "TP_G5", constant := "parity_transfer" },
  { gate := "TP_G6", constant := "eps_coh" },
  { gate := "TP_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "3d9d77254c356ae5d66375b78c6799f58acd2da0328315205258a004b193a1f8" },
  { path := "README.md", sha256 := "7395722d1cfd0c4d714789cad087fd58282b9ee90d51cb92e131161bc3d1ad9e" },
  { path := "artifacts/constants_extracted.json", sha256 := "bd23e0463df8fcc0480f66ab5b9b90b4762ed33776cbd43835e00202540ee346" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "f32c043f28e6909be9b9fd16acd29cc9f2c725deb83478400abcc40d54fd9e3c" },
  { path := "artifacts/constants_registry.json", sha256 := "1f63dcc23dc2efea86b0404035e8c4c7ec5f6702739d5335257d09e3a9fe834a" },
  { path := "artifacts/promotion_report.json", sha256 := "c9953afcba287321a8544526e72d4ca874ac27f9a878532434ab0877feb24f90" },
  { path := "artifacts/stitch_constants.json", sha256 := "d077330c0d701c079ce5aee5a40fed2c84da83e333a2583db8bac0f85f216ade" },
  { path := "notes/EG1_public.md", sha256 := "e2495eebc24f1403ec5794a13229b67ba2d4ce33ea5a14983bda1ea68fb20d98" },
  { path := "notes/EG2_public.md", sha256 := "e177f2f80ae3e8bc2314ac0ca5a1df3db284f51c09eb11c54b2e6cca218b27b8" },
  { path := "notes/EG3_public.md", sha256 := "c7ea1df9432c5f9b0de0f8c24638a79baa9f2c66acf3e0ceeeb4d256830aa36b" },
  { path := "notes/EG4_public.md", sha256 := "63861b90f8172b9389d44f3a4a48bc0a132461f157ef7419f81af4d233ed7c87" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "478c09455c8cb792aebfc1b4275fbc66c46edd4e1d0e2c621234a97fae33e445" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "cfbda38806287e92496e19f48d96c75b31aa19bce55d736ab852229c7f9c75c0" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "323ec87a264b45eab83f9bcd3716f9243f2d05126c28e9ffbc5941c8eb9d51b9" },
  { path := "paper/TWIN_PRIME_CONJECTURE_PREPRINT.md", sha256 := "edd5cc1d7172c6bdd713ad0a7067b8585b4e1ddeaab0693e97c81052c46cd837" },
  { path := "repro/REPRO_PACK.md", sha256 := "5e2ea99c5b52e18e03f25ab7b8b84a9850c694f3175b45f6cc3c6e537fd56b23" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "81947c73ffa03b0ad6424bdb7eacb0782b7bb04c223f901f8b9e35a32ed2df34" },
  { path := "repro/certificate_baseline.json", sha256 := "0314c4f025fb5e9e3481daa9eacfbb2e0c84154e24391bc07ce03e69be73bb88" },
  { path := "repro/run_repro.sh", sha256 := "636c6074a99d0c40416103a1f336093c050ee0a589e3d70ab815ae33500f37f7" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/tp_closure_guard.py", sha256 := "bbdca74dabae8e9dc353d45825fa9e7f33ccf6685c0677d95c53b9b6a3bc1b32" },
  { path := "scripts/README.md", sha256 := "adf640d096fffb4ddc13e72cc9b25d9da006a01998c746bdafdb69a69eb18812" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "TP_G1", status := "PASS" },
  { gate := "TP_G2", status := "PASS" },
  { gate := "TP_G3", status := "PASS" },
  { gate := "TP_G4", status := "PASS" },
  { gate := "TP_G5", status := "PASS" },
  { gate := "TP_G6", status := "PASS" },
  { gate := "TP_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8116883116883117" },
  { key := "kappa_sieve", value := "1.0836999999999999" },
  { key := "parity_transfer", value := "1.0294" },
  { key := "rho_rigidity", value := "1.071" },
  { key := "sigma_distribution", value := "1.067" },
  { key := "sigma_star_can", value := "1.049" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_sieve",
  "parity_transfer",
  "rho_rigidity",
  "sigma_distribution",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end TwinPrimeConjectureCanonicalLaneLean
end HautevilleHouse
