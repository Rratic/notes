# Axioms of propositional calculus
Axiom Simp`⊢ (𝜑 → (𝜓 → 𝜑))`
Axiom Frege`⊢ ((𝜑 → (𝜓 → 𝜒)) → ((𝜑 → 𝜓) → (𝜑 → 𝜒)))`
Axiom Transp`⊢ ((¬ 𝜑 → ¬ 𝜓) → (𝜓 → 𝜑))`
Rule of Modus Ponens`⊢ 𝜑   &   ⊢ (𝜑 → 𝜓)   ⇒    ⊢ 𝜓`

# Axioms of predicate calculus with equality - Tarski's S2
Rule of Generalization`⊢ 𝜑   ⇒   ⊢ ∀𝑥𝜑`
Quantified Implication`⊢ (∀𝑥(𝜑 → 𝜓) → (∀𝑥𝜑 → ∀𝑥𝜓))`
Distinctness`⊢ (𝜑 → ∀𝑥𝜑)`
Existence`⊢ ¬ ∀𝑥¬ 𝑥 = 𝑦`
Equality`⊢ (𝑥 = 𝑦 → (𝑥 = 𝑧 → 𝑦 = 𝑧))`
Left Equality for Binary Predicate`⊢ (𝑥 = 𝑦 → (𝑥 ∈ 𝑧 → 𝑦 ∈ 𝑧))`
Right Equality for Binary Predicate`⊢ (𝑥 = 𝑦 → (𝑧 ∈ 𝑥 → 𝑧 ∈ 𝑦))`

# Axioms of predicate calculus with equality - auxiliary
Quantified Negation`⊢ (¬ ∀𝑥𝜑 → ∀𝑥¬ ∀𝑥𝜑)`
Quantifier Commutation`⊢ (∀𝑥∀𝑦𝜑 → ∀𝑦∀𝑥𝜑)`
Substitution`⊢ (𝑥 = 𝑦 → (∀𝑦𝜑 → ∀𝑥(𝑥 = 𝑦 → 𝜑)))`
Quantified Equality`⊢ (¬ 𝑥 = 𝑦 → (𝑦 = 𝑧 → ∀𝑥 𝑦 = 𝑧))`

# Zermelo-Fraenkel Set Theory with Choice (ZFC)
Axiom of Extensionality`⊢ (∀𝑧(𝑧 ∈ 𝑥 ↔ 𝑧 ∈ 𝑦) → 𝑥 = 𝑦)`
Axiom of Replacement`⊢ (∀𝑤∃𝑦∀𝑧(∀𝑦𝜑 → 𝑧 = 𝑦) → ∃𝑦∀𝑧(𝑧 ∈ 𝑦 ↔ ∃𝑤(𝑤 ∈ 𝑥 ∧ ∀𝑦𝜑)))`
Axiom of Power Sets`⊢ ∃𝑦∀𝑧(∀𝑤(𝑤 ∈ 𝑧 → 𝑤 ∈ 𝑥) → 𝑧 ∈ 𝑦)`
Axiom of Union`⊢ ∃𝑦∀𝑧(∃𝑤(𝑧 ∈ 𝑤 ∧ 𝑤 ∈ 𝑥) → 𝑧 ∈ 𝑦)`
Axiom of Regularity (Foundation)`⊢ (∃𝑦𝑦 ∈ 𝑥 → ∃𝑦(𝑦 ∈ 𝑥 ∧ ∀𝑧(𝑧 ∈ 𝑦 → ¬ 𝑧 ∈ 𝑥)))`
Axiom of Infinity`⊢ ∃𝑦(𝑥 ∈ 𝑦 ∧ ∀𝑧(𝑧 ∈ 𝑦 → ∃𝑤(𝑧 ∈ 𝑤 ∧ 𝑤 ∈ 𝑦)))`
Axiom of Choice`⊢ ∃𝑦∀𝑧∀𝑤((𝑧 ∈ 𝑤 ∧ 𝑤 ∈ 𝑥) → ∃𝑣∀𝑢(∃𝑡((𝑢 ∈ 𝑤 ∧ 𝑤 ∈ 𝑡) ∧ (𝑢 ∈ 𝑡 ∧ 𝑡 ∈ 𝑦)) ↔ 𝑢 = 𝑣))`

# The Tarski–Grothendieck axiom
The Tarski–Grothendieck Axiom`⊢ ∃𝑦(𝑥 ∈ 𝑦 ∧ ∀𝑧 ∈ 𝑦(∀𝑤(𝑤 ⊆ 𝑧 → 𝑤 ∈ 𝑦) ∧ ∃𝑤 ∈ 𝑦∀𝑣(𝑣 ⊆ 𝑧 → 𝑣 ∈ 𝑤)) ∧ ∀𝑧(𝑧 ⊆ 𝑦 → (𝑧 ≈ 𝑦 ∨ 𝑧 ∈ 𝑦)))`
