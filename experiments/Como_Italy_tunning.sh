
#
#
#
#
#time PYTHONPATH="." luigi  --module recommendation.task.model.trivago.trivago_models #TrivagoModelInteraction --project trivago_contextual_bandit #--data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors #50 --learning-rate=0.001 --optimizer adam --metrics '["loss"]' --epochs 250 #--obs-batch-size 200 --early-stopping-patience 10 --batch-size 200 --num-episodes 30 #--bandit-policy custom_lin_ucb --bandit-policy-params '{"alpha": 1e-5}'

# Epsilon Greedy

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.001 --optimizer adam --metrics '["loss"]' --epochs 250 --obs-batch-size 200 --early-stopping-patience 10 --batch-size 200 --num-episodes 200 --bandit-policy epsilon_greedy --bandit-policy-params '{"epsilon": 0.05}' --output-model-dir "gs://deepfood-results"

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.001 --optimizer adam --metrics '["loss"]' --epochs 250 --obs-batch-size 200 --early-stopping-patience 10 --batch-size 200 --num-episodes 200 --bandit-policy epsilon_greedy --bandit-policy-params '{"epsilon": 0.1}' --output-model-dir "gs://deepfood-results" 

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.001 --optimizer adam --metrics '["loss"]' --epochs 250 --obs-batch-size 200 --early-stopping-patience 10 --batch-size 200 --num-episodes 200 --bandit-policy epsilon_greedy --bandit-policy-params '{"epsilon": 0.2}' --output-model-dir "gs://deepfood-results" 

# lin_ucb

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 500 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy lin_ucb --bandit-policy-params '{"alpha": 1e-5}'  --output-model-dir "gs://deepfood-results" > nohup4.1 &

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 500 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy lin_ucb --bandit-policy-params '{"alpha": 1e-2}'  --output-model-dir "gs://deepfood-results" > nohup4.2 &

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 500 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy lin_ucb --bandit-policy-params '{"alpha": 1e-1}'  --output-model-dir "gs://deepfood-results" > nohup4.2 &

docker run --gpus '"device=0"' --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 500 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy lin_ucb --bandit-policy-params '{"alpha": 1}'  --output-model-dir "gs://deepfood-results" > nohup4.3 &

# custom_lin_ucb

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy custom_lin_ucb --bandit-policy-params '{"alpha": 1e-5}' 

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy custom_lin_ucb --bandit-policy-params '{"alpha": 1e-2}' 

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy custom_lin_ucb --bandit-policy-params '{"alpha": 1e-1}' 

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy custom_lin_ucb --bandit-policy-params '{"alpha": 1}' 

## Lin TS

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy lin_ts --bandit-policy-params '{"v_sq": 1}' 

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy lin_ts --bandit-policy-params '{"v_sq": 2}' 

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy lin_ts --bandit-policy-params '{"v_sq": 0.5}' 

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy lin_ts --bandit-policy-params '{"v_sq": 5}' 

## softmax_explorer

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy softmax_explorer --bandit-policy-params '{"logit_multiplier": 0.5}' & 

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy softmax_explorer --bandit-policy-params '{"logit_multiplier": 1}'  

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy softmax_explorer --bandit-policy-params '{"logit_multiplier": 5.0}'  

## Percentile_adaptive

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy percentile_adaptive --bandit-policy-params '{"exploration_threshold": 0.2}' > nohup9 &

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy percentile_adaptive --bandit-policy-params '{"exploration_threshold": 0.5}' > nohup9 &

docker run --gpus '"device=0"' -it gcr.io/deepfood/deep-reco-gym:trivago --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 200 --bandit-policy percentile_adaptive --bandit-policy-params '{"exploration_threshold": 0.7}' > nohup9 &



## --------------------------------------------------------------------
## 
PYTHONPATH="." nohup  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 300 --bandit-policy adaptive --bandit-policy-params '{"exploration_threshold": 0.7, "decay_rate": 0.000199566512577}' > nohup8 & 
#https://www.wolframalpha.com/input/?i=0.1%3D0.8%281-r%29%5E2000

PYTHONPATH="." nohup  luigi --module recommendation.task.model.trivago.trivago_models TrivagoModelInteraction --project trivago_contextual_bandit --data-frames-preparation-extra-params '{"filter_city": "Como, Italy"}' --n-factors 50 --learning-rate=0.0001 --optimizer radam --metrics '["loss"]' --epochs 250 --full-refit --obs-batch-size 100 --early-stopping-patience 10 --batch-size 20 --num-episodes 300 --bandit-policy explore_then_exploit --bandit-policy-params '{"explore_rounds": 1000, "decay_rate": 0.0001872157}' > nohup10 &
