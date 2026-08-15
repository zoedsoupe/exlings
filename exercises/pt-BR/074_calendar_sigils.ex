# Sigils de Calendário (~D, ~T, ~U e ~N)
#
# Os tipos de calendário do Elixir (Date, Time, NaiveDateTime,
# DateTime) têm cada um um sigil que constrói a struct como literal:
#
#   ~D[2026-08-15]           # um %Date{}      (ano-mês-dia)
#   ~T[07:30:00]             # um %Time{}      (hora:minuto:segundo)
#   ~N[2026-08-15 07:30:00]  # um %NaiveDateTime{} (sem fuso horário)
#   ~U[2026-08-15 07:30:00Z] # um %DateTime{}  (Z = deslocamento UTC)
#
# O sigil valida em tempo de compilação: ~D[2026-13-40] é um erro
# ANTES do programa rodar. As structs têm campos que você pode ler:
#
#   ~D[2026-08-15].year      # 2026
#   ~T[07:30:00].minute      # 30
#
# O módulo Date compara e faz aritmética com datas:
#
#   Date.compare(~D[2026-08-15], ~D[2026-01-01])  # :gt (:lt, :eq também)
#   Date.diff(~D[2026-08-15], ~D[2026-01-01])     # dias entre elas
#   Date.add(~D[2026-08-15], 7)                   # ~D[2026-08-22]
#
# Você pode até inventar seus próprios sigils definindo funções como
# sigil_x/2. Um detalhe: sigils expandem em tempo de COMPILAÇÃO,
# então um sigil definido em um script não pode ser usado nesse
# mesmo script. Em um projeto, você o define em um módulo e usa
# require/use a partir de outro.
#
# Sua tarefa:
# Construa os literais que faltam. Saída esperada:
#
#   Deadline: 2026-08-15
#   Compare: :gt
#   Days apart: 226
#   Alarm at: 07:30:00

start = ~D[2026-01-01]

# Construa um literal %Date{} para 2026-08-15 com o sigil de data
deadline = ???

IO.puts("Deadline: #{deadline}")
IO.puts("Compare: #{inspect(Date.compare(deadline, start))}")
IO.puts("Days apart: #{Date.diff(deadline, start)}")

# Construa um literal %Time{} para 07:30:00 com o sigil de hora
alarm = ???

IO.puts("Alarm at: #{alarm}")
