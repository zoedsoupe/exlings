import Config

test? = config_env() == :test

progress_file = if test?, do: ".progress_test", else: ".progress"

config :exlings, progress_file: progress_file
