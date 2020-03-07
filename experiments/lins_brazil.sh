PYTHONPATH="."  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Lins, Brazil"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --dataset-split-method column --epochs 300 --obs-batch-size 100 --num-filters 24 --early-stopping-patience 10 --full-refit --batch-size 10 --num-episodes 10 --bandit-policy random

PYTHONPATH="."  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Lins, Brazil"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --dataset-split-method column --epochs 300 --obs-batch-size 100 --num-filters 24 --early-stopping-patience 10 --full-refit --batch-size 10 --num-episodes 10 --bandit-policy model

PYTHONPATH="."  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Lins, Brazil"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --dataset-split-method column --epochs 300 --obs-batch-size 100 --num-filters 24 --early-stopping-patience 10 --full-refit --batch-size 10 --num-episodes 10 --bandit-policy epsilon_greedy

PYTHONPATH="."  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Lins, Brazil"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --dataset-split-method column --epochs 300 --obs-batch-size 100 --num-filters 24 --early-stopping-patience 10 --full-refit --batch-size 10 --num-episodes 10 --bandit-policy custom_lin_ucb

PYTHONPATH="."  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Lins, Brazil"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --dataset-split-method column --epochs 300 --obs-batch-size 100 --num-filters 24 --early-stopping-patience 10 --full-refit --batch-size 10 --num-episodes 10 --bandit-policy softmax_explorer  --bandit-policy-params '{"logit_multiplier": 5}' 

PYTHONPATH="."  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Lins, Brazil"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --dataset-split-method column --epochs 300 --obs-batch-size 100 --num-filters 24 --early-stopping-patience 10 --full-refit --batch-size 10 --num-episodes 10 --bandit-policy lin_ucb

PYTHONPATH="."  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Lins, Brazil"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --dataset-split-method column --epochs 300 --obs-batch-size 100 --num-filters 24 --early-stopping-patience 10 --full-refit --batch-size 10 --num-episodes 10 --bandit-policy adaptive

PYTHONPATH="."  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Lins, Brazil"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --dataset-split-method column --epochs 300 --obs-batch-size 100 --num-filters 24 --early-stopping-patience 10 --full-refit --batch-size 10 --num-episodes 10 --bandit-policy percentile_adaptive  --bandit-policy-params '{"exploration_threshold": 0.7}'

PYTHONPATH="."  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Lins, Brazil"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --dataset-split-method column --epochs 300 --obs-batch-size 100 --num-filters 24 --early-stopping-patience 10 --full-refit --batch-size 10 --num-episodes 10 --bandit-policy explore_then_exploit --bandit-policy-params '{"explore_rounds": 200}'

PYTHONPATH="."  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Lins, Brazil"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --dataset-split-method column --epochs 300 --obs-batch-size 100 --num-filters 24 --early-stopping-patience 10 --full-refit --batch-size 10 --num-episodes 10 --bandit-policy explore_then_exploit --bandit-policy-params '{"explore_rounds": 200}'