defmodule Membrane.VP9 do
  @moduledoc """
  This module provides a format for a VP8 encoded video stream.
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
  Number of frames per second. To avoid using floating point numbers,
  it is described by 2 integers number of frames per timeframe in seconds.

  For example, NTSC's framerate of ~29.97 fps is represented by `{30_000, 1001}`.  If the
  information about the framerate is not present in the stream, `nil` value should be used.
  """
  @type framerate :: {frames :: pos_integer(), seconds :: pos_integer()} | nil

  @typedoc """
  Format definition for a VP8 video stream.
  """
  @type t :: %__MODULE__{
          width: width(),
          height: height(),
          framerate: framerate()
        }

  @enforce_keys [
    :width,
    :height
  ]
  defstruct @enforce_keys ++
              [
                framerate: nil
              ]
end
