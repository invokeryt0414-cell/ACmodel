# AE Design Log

## 目的
AC = AE + AI を作る。
AEは感情・動機・目的を生成する。
AIは計画・推論・会話を担当する。

## 採用した設計
- World Model = AIが信じている世界
- Prediction = 未来を連想・予測する機構
- Evaluation = 未来が自分に与える影響を評価する機構
- Emotion = Evaluationの結果として生まれる
- Goal = Emotionから生まれる動機・目的

## 現在の流れ
Environment
↓
Perception
↓
Memory
↓
World Model
↓
Prediction
↓
Evaluation
↓
Emotion
↓
Goal
↓
AI
↓
Planning
↓
Action

## 保留
- Predictionの入力と出力
- Evaluationの評価項目
- World Modelの詳細構造

## Predictionの定義

Predictionは、現在のWorld Modelから未来のWorld Modelを予測する機構である。

入力:
- 現在のWorld Model
- Memory
- Body
- Action候補

出力:
- 未来のWorld Model
- 未来のSelf状態
- 未来の危険候補
- 未来の達成可能性

目的:
Evaluationが未来を評価できるようにする。