instruction = Instruction.create!(name: 'Сборка X баннера')

Kit.create!(
  instruction: instruction,
  detail: Detail.create!(
    name: 'Пластиковый паук',
    short_name: 'A',
    link: 'http://teamcenter.indieteam.ru/1.zip'
  ),
  quantity: 1
)

Kit.create!(
  instruction: instruction,
  detail: Detail.create!(
    name: 'Железная палка без крючка',
    short_name: 'B',
    link: 'http://teamcenter.indieteam.ru/2.zip'
  ),
  quantity: 1
)

Kit.create!(
  instruction: instruction,
  detail: Detail.create!(
    name: 'Железная палка c крючком',
    short_name: 'C',
    link: 'http://teamcenter.indieteam.ru/3.zip'
  ),
  quantity: 2
)

Kit.create!(
  instruction: instruction,
  detail: Detail.create!(
    name: 'Пластиковая палка c крючком',
    short_name: 'D',
    link: 'http://teamcenter.indieteam.ru/4.zip'
  ),
  quantity: 2
)

Kit.create!(
  instruction: instruction,
  detail: Detail.create!(
    name: 'Баннер',
    short_name: 'E',
    link: 'http://teamcenter.indieteam.ru/5.zip'
  ),
  quantity: 1
)

Step.create!(description: 'Взять деталь A', instruction: instruction)
Step.create!(description: 'Взять деталь B', instruction: instruction)
Step.create!(description: 'Вставить деталь B в отверстие b', instruction: instruction)
Step.create!(description: 'Взять деталь C', instruction: instruction)
Step.create!(description: 'Вставить деталь C в отверстие c', instruction: instruction)
Step.create!(description: 'Взять деталь C', instruction: instruction)
Step.create!(description: 'Вставить деталь C в отверстие c', instruction: instruction)
Step.create!(description: 'Взять деталь D', instruction: instruction)
Step.create!(description: 'Вставить деталь D в отверстие d', instruction: instruction)
Step.create!(description: 'Взять деталь D', instruction: instruction)
Step.create!(description: 'Вставить деталь D в отверстие d', instruction: instruction)
Step.create!(description: 'Взять деталь E', instruction: instruction)
Step.create!(description: 'Установить деталь E', instruction: instruction)
Step.create!(description: 'Проверка эталонна', instruction: instruction)

ControlPoint.create!(username: 'Проверка X баннера с эталонной моделью', instruction: instruction)
