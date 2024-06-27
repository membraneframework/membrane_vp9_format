defmodule Membrane.VP9 do
  @moduledoc """
  This module provides a format for a VP9 encoded video stream.
  """

  @typedoc """
  Width of single frame in pixels.

  Allowed values may be restricted by used encoding parameters, for example, when using
  4:2:0 chroma subsampling dimensions must be divisible by 2.
  """
  @type width :: pos_integer()

  @typedoc """
  Height of single frame in pixels.

  Allowed values may be restricted by used encoding parameters, for example, when using
  4:2:0 chroma subsampling dimensions must be divisible by 2.
  """
  @type height :: pos_integer()

  @typedoc """
  Format definition for a VP9 video stream.
  """
  @type t :: %__MODULE__{
          width: width(),
          height: height()
        }

  @enforce_keys [
    :width,
    :height
  ]
  defstruct @enforce_keys
end
