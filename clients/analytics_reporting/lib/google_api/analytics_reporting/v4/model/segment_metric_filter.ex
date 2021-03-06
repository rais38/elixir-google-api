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

defmodule GoogleApi.AnalyticsReporting.V4.Model.SegmentMetricFilter do
  @moduledoc """
  Metric filter to be used in a segment filter clause.

  ## Attributes

  - comparisonValue (String.t): The value to compare against. If the operator is &#x60;BETWEEN&#x60;, this value is treated as minimum comparison value. Defaults to: `null`.
  - maxComparisonValue (String.t): Max comparison value is only used for &#x60;BETWEEN&#x60; operator. Defaults to: `null`.
  - metricName (String.t): The metric that will be filtered on. A &#x60;metricFilter&#x60; must contain a metric name. Defaults to: `null`.
  - operator (String.t): Specifies is the operation to perform to compare the metric. The default is &#x60;EQUAL&#x60;. Defaults to: `null`.
    - Enum - one of [UNSPECIFIED_OPERATOR, LESS_THAN, GREATER_THAN, EQUAL, BETWEEN]
  - scope (String.t): Scope for a metric defines the level at which that metric is defined.  The specified metric scope must be equal to or greater than its primary scope as defined in the data model. The primary scope is defined by if the segment is selecting users or sessions. Defaults to: `null`.
    - Enum - one of [UNSPECIFIED_SCOPE, PRODUCT, HIT, SESSION, USER]
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :comparisonValue => any(),
          :maxComparisonValue => any(),
          :metricName => any(),
          :operator => any(),
          :scope => any()
        }

  field(:comparisonValue)
  field(:maxComparisonValue)
  field(:metricName)
  field(:operator)
  field(:scope)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.SegmentMetricFilter do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.SegmentMetricFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.SegmentMetricFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
