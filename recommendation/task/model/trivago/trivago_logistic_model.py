from typing import List
import functools
from itertools import starmap

import json

import luigi
import torch
import torch.nn as nn
from torchbearer import Trial
import torchbearer
import numpy as np
from recommendation.model.trivago.trivago_models import TestModel, SimpleCNNModel, SimpleRNNModel, SimpleLinearModel, SimpleCNNTransformerModel
from recommendation.task.model.base import TORCH_ACTIVATION_FUNCTIONS, TORCH_DROPOUT_MODULES
from recommendation.task.model.base import TORCH_WEIGHT_INIT
from recommendation.task.model.interaction import InteractionTraining
from recommendation.task.model.base import BaseTorchModelTraining
from recommendation.rank_metrics import *
from recommendation.task.model.trivago.trivago_models import TrivagoModelTraining, TrivagoModelInteraction


class TrivagoLogisticModelInteraction(TrivagoModelInteraction):

  def create_module(self) -> nn.Module:

      return SimpleLinearModel(
          window_hist_size=self.window_hist_size,
          vocab_size=self.vocab_size,
          metadata_size=self.metadata_size,
          n_users=self.n_users,
          n_items=self.n_items,
          n_factors=self.n_factors,
          filter_sizes=self.filter_sizes,
          num_filters=self.num_filters,
          dropout_prob=self.dropout_prob,
          dropout_module=TORCH_DROPOUT_MODULES[self.dropout_module],            
      )

class TrivagoLogisticModelTraining(TrivagoModelTraining):

  def create_module(self) -> nn.Module:

      return SimpleLinearModel(
          window_hist_size=self.window_hist_size,
          vocab_size=self.vocab_size,
          metadata_size=self.metadata_size,
          n_users=self.n_users,
          n_items=self.n_items,
          n_factors=self.n_factors,
          filter_sizes=self.filter_sizes,
          num_filters=self.num_filters,
          dropout_prob=self.dropout_prob,
          dropout_module=TORCH_DROPOUT_MODULES[self.dropout_module],            
      )