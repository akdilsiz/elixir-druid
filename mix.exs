#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
defmodule Druid.MixProject do
  use Mix.Project

  def project do
    [
      app: :druid,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [coveralls: :test, "coveralls.travis": :test,  "coveralls.detail": :test, "coveralls.post": :test, "coveralls.html": :test],
      package: package(),
      deps: deps(),
      source_url: "https://github.com/akdilsiz/elixir-druid"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", ".formatter.exs", "LICENSE*"],
      maintainers: ["Abdulkadir DILSIZ"],
      licenses: ["Apache-2.0"],
      description: "Druid client",
      links:  %{"GitHub" => "https://github.com/akdilsiz/elixir-druid"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poolboy, "~> 1.5"},
      {:excoveralls, "~> 0.10.3", only: :test},
      {:credo, "~> 1.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.19.2", only: :dev},
      {:jason, "~> 1.1"}
    ]
  end
end
