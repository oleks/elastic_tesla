defmodule ElasticTesla do
  @moduledoc ~S"""
  ElasticTesla is a thin wrapper around Tesla for talking with
  ElasticSearch instances.
  """

  def base_url do
    Application.get_env(:elastic, :base_url)
  end

  def basic_auth do
    Application.get_env(:elastic, :basic_auth)
  end
end
