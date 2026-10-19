Strict retained same-description failure: best +2.0917%, p1 +2.2725%, median +2.2638%; not a changed-plan promotion.

All four Measure-first ordinals (1,3,5,7) exceed 2% in all three statistics: best +2.092–2.352%, p1 +2.237–2.597%, median +2.264–2.704%. All four Estimate-first ordinals stay below 2% (best +0.481–1.088%). Measure is slower in all eight.

Unlike N262144, this is a distribution-wide, order-associated pattern, not just an isolated low-tail sample. The merged minima for both members come from ordinal 7, which itself fails, so merging is not the explanation.

Current construction order and initial calibration/execution order are coupled. The pattern cannot distinguish memory/layout history from warmup/time/order effects, and eight processes are not proof of cause. Reported interleaved/batch kernels do not identify the changed fused-stack path as a cause.

The completed run is invalid for acceptance because monitoring includes one dirty sample and 6.41% clock drift. Those global facts do not causally explain this case or erase either strict miss.

No production source remedy is established. A targeted fixed diagnostic is justified: one eight-process batch-N32 sample trace with the EXISTING execution-order-factorial option, after a fresh sustained quiet gate.

That diagnostic independently balances construction parity and initial calibration/execution order (four combinations, twice each). Keep verified aligned zero input, batch32768, existing caller, full-profile budgets, seven alternating rounds and controls; inspect all per-round distributions. It distinguishes association with construction from association with initial execution, but does not by itself prove allocation or cache causality.

Do not automatically launch both diagnostics or repeat until pass. The separately prepared N262144 sample-only command remains the previously recommended next step; this batch factorial is a concrete alternative/follow-up to schedule deliberately. Neither can replace full-run cells or waive 2%. All earlier evidence stays retained.
