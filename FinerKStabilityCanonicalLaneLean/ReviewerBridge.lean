import FinerKStabilityCanonicalLaneLean.Formalization
import FinerKStabilityCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace FinerKStabilityCanonicalLaneLean

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
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "e7fe6e6265d01d856b3ff68f67856e85962ff78b2da0428bea41eef18c814fc4", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "9cd42bb4745078828e23ddb9236e32cce4529d948266640dda5a2fbeaed485c0", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "c41816ec8bb17815da54dfc9508d65dee157c7281e1a32cdbe4c3966b10d5f58", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "8f4c65237ab660ae2863f896a354685d4f99ed4427087461c5a027662b7029af", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "962081274a55e083e6ce5b876ce30010378b43d044caf9aa27fad6d6e1e4e0ae", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "c07d7937346ec42280c9242f9bef7d6d95d021c306bcbbe9e49380920264c29f", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "c081e5972ae4f0ed180eddfb23c6b0ec0c07bc59739233b7ceffd9ebac4b62ae", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "d3f0fe35aef2d33c867c454fc0ae67793da15391f6bbd26de104b4a956045b43", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "2b656a89f0987bcbf5cce00f4afc22ee28c5f8cd750cdf77c1c48efe94cd1b31", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 0

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "README.md", sha256 := "ddb3d25af069d943df8fbbdab70776a9b4e3d635cff9e7e1d61f9beb733a8a4a" },
  { path := "CITATION.cff", sha256 := "b909dca39777f8145d56da97fc1af1bfce8da8afa7d55379ee6331b354033943" },
  { path := "REVIEWER_MAP.md", sha256 := "e7fe6e6265d01d856b3ff68f67856e85962ff78b2da0428bea41eef18c814fc4" },
  { path := "paper/FINER_K_STABILITY_PREPRINT.md", sha256 := "665108994d61f04ec644bc5fbaaefe2101f9d434e2e853046948dcd169237d99" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "7e09c2ccbe269edd17fcfb9b7add57acc89b2af08c9e086ff74f25a3b416121a" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "fa743c13b6f2ded5ebe2d62981d71a8179e68645410aa1a2f1b7264751e38ca4" },
  { path := "notes/EG1_public.md", sha256 := "58f1e683794f72c69ad7a748646fa1d9991d5d87e4e40c7aab3f2be2c5240f19" },
  { path := "notes/EG2_public.md", sha256 := "8985c544d98e6a160323802d935e8b8ded5b820e9b85e7d713b91afd87cd27d7" },
  { path := "notes/EG3_public.md", sha256 := "c5b5a0ef96dac097ebb10505587ab32e5c17572e61e803a848fb72d64ff62cd3" },
  { path := "notes/EG4_public.md", sha256 := "6c5d442a058319c58738442ecb3d98bc1cfb5a7aa3492780fc47e65726001ee7" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "9cd42bb4745078828e23ddb9236e32cce4529d948266640dda5a2fbeaed485c0" },
  { path := "scripts/fks_closure_guard.py", sha256 := "db9a9c07d90effe61c156065da4d3b009728a2f5f9ac219c4bc4a9befe6a9579" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "repro/run_repro.sh", sha256 := "367c6d2b42fd6cba8fc8c073743030f22306418d010db50be763321484b87e79" },
  { path := "repro/REPRO_PACK.md", sha256 := "715ad5b8948334abf79870d3cd93c9c18ea74ba01ad89b60591a52642ba9acb9" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "e6061969db287151eb4275bfe40b17e9ce3bfd18be0672f882178924da0b5c39" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "c41816ec8bb17815da54dfc9508d65dee157c7281e1a32cdbe4c3966b10d5f58" },
  { path := "artifacts/constants_extracted.json", sha256 := "8f4c65237ab660ae2863f896a354685d4f99ed4427087461c5a027662b7029af" },
  { path := "artifacts/constants_registry.json", sha256 := "962081274a55e083e6ce5b876ce30010378b43d044caf9aa27fad6d6e1e4e0ae" },
  { path := "artifacts/stitch_constants.json", sha256 := "c07d7937346ec42280c9242f9bef7d6d95d021c306bcbbe9e49380920264c29f" },
  { path := "artifacts/promotion_report.json", sha256 := "c081e5972ae4f0ed180eddfb23c6b0ec0c07bc59739233b7ceffd9ebac4b62ae" },
  { path := "repro/certificate_baseline.json", sha256 := "2b656a89f0987bcbf5cce00f4afc22ee28c5f8cd750cdf77c1c48efe94cd1b31" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "YTD_G1", status := "PASS" },
  { gate := "YTD_G2", status := "PASS" },
  { gate := "YTD_G3", status := "PASS" },
  { gate := "YTD_G4", status := "PASS" },
  { gate := "YTD_G5", status := "PASS" },
  { gate := "YTD_G6", status := "PASS" },
  { gate := "YTD_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_stability", value := "1.091838" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_star_can", value := "1.053" },
  { key := "sigma_testconfig", value := "1.075" },
  { key := "stability_lock", value := "1.02951" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "k-stability_transfer",
  "kappa_canonical",
  "kappa_compact",
  "kappa_stability",
  "rho_rigidity",
  "sigma_degeneration",
  "sigma_star_can",
  "sigma_testconfig",
  "stability_lock"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 0 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 0 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 10 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end FinerKStabilityCanonicalLaneLean
end HautevilleHouse
