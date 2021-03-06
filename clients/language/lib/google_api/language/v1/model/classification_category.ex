# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Language.V1.Model.ClassificationCategory do
  @moduledoc """
  Represents a category returned from the text classifier.

  ## Attributes

  - confidence (float()): The classifier&#39;s confidence of the category. Number represents how certain the classifier is that this category represents the given text. Defaults to: `null`.
  - name (String.t): The name of the category representing the document, from the [predefined taxonomy](/natural-language/docs/categories). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :confidence => any(),
          :name => any()
        }

  field(:confidence)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.Language.V1.Model.ClassificationCategory do
  def decode(value, options) do
    GoogleApi.Language.V1.Model.ClassificationCategory.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Language.V1.Model.ClassificationCategory do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
