puts 'Gerando tools...'

5.times do |i|
  Tool.create(
    name: ["multimetro", "osciloscopio"].sample ,
    description: ["ferramenta de manutenção","ferramenta de teste"].sample
    )
end

puts 'tools gerados com sucesso!'