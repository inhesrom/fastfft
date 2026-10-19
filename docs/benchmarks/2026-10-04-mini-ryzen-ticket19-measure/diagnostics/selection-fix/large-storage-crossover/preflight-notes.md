The optimized executable contains one shared replay function and one caller,
with two timed member callsites. Both pass CALLS=1 in EDX and 100000000 ns in
R8D. Initial script expectations of separate generic copies were corrected
after inspecting all generated callsites; no timed sample policy changed.
The independent original/replay audit requires each actual precision, plan,
region signature, caller byte width, call count and all 16 raw trials.

The result aggregation helper is named summarize-run.py to avoid shadowing
the Python standard-library inspect module. No benchmark had started during
these preflight script corrections.
