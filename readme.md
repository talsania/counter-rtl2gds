# 16-bit Synchronous Up/Down Counter (RTL-to-GDS)
<img width="2880" height="1800" alt="Screenshot from 2026-05-23 15-17-51" src="https://github.com/user-attachments/assets/79f86bba-b223-4c57-9fa3-63c221334ca3" />

## Specifications
**Inputs:**
| Signal   | Width | Description |
|----------|-------|-------------|
| `clk`    | 1     | Clock signal (positive edge-triggered) |
| `rst_n`  | 1     | Active-low asynchronous reset |
| `en`     | 1     | Counter enable |
| `up_down`| 1     | Direction control (1=up, 0=down) |
| `load`   | 1     | Parallel load enable |
| `d`      | 16    | Parallel load data |

**Outputs:**
| Signal   | Width | Description |
|----------|-------|-------------|
| `q`      | 16    | Counter value |
| `tc`     | 1     | Terminal count (overflow flag when counting up at max value) |
| `borrow` | 1     | Underflow flag (when counting down at zero) |

## Metrics
### Timing
- **Clock Period:** 10 ns
- **Critical Path Slack:** 2790.6 ps
- **Max Delay (borrow output):** 5.209 ns
- **Timing Status:** ✓ All paths met

### Area
- **Total Area:** 3971.220 µm²
- **Cell Area:** 2511.936 µm²
- **Net Area:** 1459.284 µm²
- **Instance Count:** 88 cells (16 sequential, 72 combinational)

### Power (@ 1 GHz nominal conditions)
- **Total Power:** 165.48 µW
  - Internal Power: 135.67 µW (81.99%)
  - Switching Power: 29.77 µW (17.99%)
  - Leakage Power: 0.033 µW (0.02%)
- **Register Power:** 109.03 µW (65.88%)
- **Logic Power:** 47.43 µW (28.66%)
- **Clock Power:** 9.03 µW (5.46%)

## Tools & Technology
- **RTL Simulation:** Cadence Xcelium 25.13
- **Synthesis:** Cadence Genus 25.13
- **Place & Route:** Cadence Innovus 25.13
- **Technology:** SCL 180nm PDK
