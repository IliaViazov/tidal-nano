# Synthesizers

## Syntax and Basic Params

`d1 $ s "supergong" # decay "[1 0.2]/4" # voice "[0.5 0]/8"`

Basic parameteres for all instruments:`sustain` `freq` `pan`

## Additive synthesis

|**Name** | **Description** | **Params** |
|--------|-------------|------|
| supergong   | Gong-like noise | `voice` `decay` `accelerate` |
|	 | | |

## Substractive synthesis

|**Name** | **Description** | **Params** |
|--------|-------------|------|
| supersquare   | Square wave synth | `voice` `decay` `accelerate` `semitone` `resonance` `lfo` `rate` `pitch1`|
|	 | | |
| supersaw   | Sawtooth wave synth | `voice` `decay` `accelerate` `semitone` `resonance` `lfo` `rate` `pitch1`|
|	 | | |
| superpwm   | PWM synth | `voice` `decay` `accelerate` `semitone` `resonance` `lfo` `rate` `pitch1`|
|	 | | |
| superchip   | Atari 3osc-synth | `slide` `rate` `accelerate` `pitch2` `pitch3` `voice`|
|	 | | |
| superhoover   | Hoover | `slide` `decay` `accelerate`|
|	 | | |
| superzow   | Phased saws | `decay` `accelerate` `slide` `detune`|
|	 | | |
| superton   | Feedback PWM | `accelerate` `voice` `detune`|
|	 | | |
| superreese   | Vaguely Reese-like synth | `accelerate` `voice` `detune`|
|	 | | |
| supernoise   | Digital noise | |
|	 | | |
| superstatic   | Impulse noise with fades | `voice` `accelerate` `pitch1` `slide` `resonance`|
|	 | | |
| supercomparator   | Comparator | `voice` `decay` `accelerate` `resonance` `lfo` `rate` `pitch1`|
|	 | | |

## Physical modelling

|**Name** | **Description** | **Params** |
|--------|-------------|------|
| supermandolin   | Vibrating string with an initial pulse | `sustain` `accelerate` `detune`|
|	 | | |
| superpiano   | Piano synth | `velocity` `sustain` `detune` `muffle` `stereo`|
|	 | | |
| superfork   | Tuning Fork | `accelerate`|
|	 | | |
| superhammond   | Hammond B3 | `perc` `percf` `decay` `vibrato` `vrate` `voice`|
|	 | | |
| supervibe   | Vibrophone | `decay` `velocity` `accelerate` `modamp` `modfreq` `detune`|
|	 | | |

## FM synthesis

6 operator FM synth (DX7-like). Works a bit different from the original DX7. Instead of algorithms, you set the amount of modulation every operator receives from other operators and itself (feedback), virtually providing an endless number of possible combinations (algorithms). Syntax:

`<argumentName + opIndex>[modulatorIndex | egIndex]`

`# amp1 1`: op1 as carrier with full volume

`# mod12 0.78`: modulation from op1 to op2

|**Name** | **Description** | **Params** |
|--------|-------------|------|
| superfm   | DX7-like | `voice` `lfofreq` `lfodepth` `amp` `ratio` `detune` `eglevel` `egrate` `feedback`|
|	 | | |

## Drum synthesis

|**Name** | **Description** | **Params** |
|--------|-------------|------|
| superhex   | Hexagonal drum-like membrane | `rate` `accelerate` |
|	 | | |
| superkick   | Kick Drum | `n` `accelerate` `pitch1` `decay` |
|	 | | |
| super808   |  808-ish kick | `n` `rate` `voice` |
|	 | | |
| superhat   | Hi-hat | `n` `accelerate` |
|	 | | |
| supersnare   |  Snare Drum | `n` `decay` `accelerate` |
|	 | | |
| superclap   |  Hand clap | `n` `delay` `rate` `pitch1` |
|	 | | |
| soskick   |  Kick drum | `midinote` `pitch1` `voice` `pitch2` `speed` `freq`|
|	 | | |
| soshats   |  Hi-hat | `resonance` `pitch1` `sustain` `freq` |
|	 | | |
| sostoms   |  Toms | `voice` `sustain` `freq`  |
|	 | | |
| sossnare   |  Snare drum | `voice` `semiton` `pitch1` `resonance` `freq` |
|	 | | |

## Audio Input

|**Name** | **Description** | **Params** |
|--------|-------------|------|
| in   | Live audio input | `in` |
|	 | | |
| inr   | Pitch shifted live audio input | `inr` `accelerate`|
|	 | | |

## Other

|**Name** | **Description** | **Params** |
|--------|-------------|------|
| imp   | Modulated band limited impulse | `accelerate` |
|	 | | |
| psin   | Modulated phase mod sines | `accelerate`|
|	 | | |
| gabor   | Gabor grain | |
|	 | | |
| cyclo   | Shepard on a cycle | `accelerate`|
|	 | | |
| supersiren   | Modulated phase mod sines | `sustain`|
|	 | | |
| supergrind   |  | `accelerate` `detune` `voice` `rate`|
|	 | | |
