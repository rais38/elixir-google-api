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

defmodule GoogleApi.DigitalAssetLinks.V1.Model.ListResponse do
  @moduledoc """
  Response message for the List call.

  ## Attributes

  - debugString (String.t): Human-readable message containing information intended to help end users understand, reproduce and debug the result.   The message will be in English and we are currently not planning to offer any translations.  Please note that no guarantees are made about the contents or format of this string.  Any aspect of it may be subject to change without notice. You should not attempt to programmatically parse this data.  For programmatic access, use the error_code field below. Defaults to: `null`.
  - errorCode ([String.t]): Error codes that describe the result of the List operation. Defaults to: `null`.
    - Enum - one of 
  - maxAge (String.t): From serving time, how much longer the response should be considered valid barring further updates. REQUIRED Defaults to: `null`.
  - statements ([Statement]): A list of all the matching statements that have been found. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :debugString => any(),
          :errorCode => list(any()),
          :maxAge => any(),
          :statements => list(GoogleApi.DigitalAssetLinks.V1.Model.Statement.t())
        }

  field(:debugString)
  field(:errorCode, type: :list)
  field(:maxAge)
  field(:statements, as: GoogleApi.DigitalAssetLinks.V1.Model.Statement, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.DigitalAssetLinks.V1.Model.ListResponse do
  def decode(value, options) do
    GoogleApi.DigitalAssetLinks.V1.Model.ListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DigitalAssetLinks.V1.Model.ListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
