defprotocol string.Inspect
    only: [BitString, List, Array]

defimpl String.Inspect, for i,d do:
    def inspect(false), do:
    def inspect(true),  do:
    def inspect(nil),   do:
    def inspect(:""),   do:

    def inspect(atom) do