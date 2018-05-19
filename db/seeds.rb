#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
# puts 'ROLES'
# YAML.load(ENV['ROLES']).each do |role|
#   Role.find_or_create_by_name({ :name => role }, :without_protection => true)
#   puts 'role: ' << role
# end
# puts 'DEFAULT USERS'
# user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
# puts 'user: ' << user.name
# user.add_role :admin

puts 'Create Admin Role'
Role.create({ name: "admin"})
puts 'Create User Role'
Role.create({ name: "user"})

puts 'ScienceField creation'
ScienceField.create([
  { name: "Mathematics", name_ru: "Математика" },
  { name: "Physics", name_ru: "Физика" },
  { name: "Chemistry", name_ru: "Химия" },
  { name: "EarthScience_Earth_Atmosphere_Marine_Astronomy", name_ru: "Науки_о_Земле_Земная_атмосфера_Морские_науки_Астрономия" },
  { name: "Life_Science", name_ru: "Наука_о_жизни" },
  { name: "Agriculture_Fishery_Food", name_ru: "Сельское_хозяйство_Рыболовство" },
  { name: "Health_Science", name_ru: "Наука_о_здоровье" },
  { name: "Machinery", name_ru: "Машиностроение" },
  { name: "Materials", name_ru: "Материалы" },
  { name: "Chemical_Engineering", name_ru: "Химическое_машиностроение" },
  { name: "Electricity_Electronics", name_ru: "Электричество_Электроника" },
  { name: "Information_Communication", name_ru: "Информатика_и_связь" },
  { name: "Energy_Resources", name_ru: "Энергетические_ресурсы" },
  { name: "Nuclear_Power", name_ru: "Атомная_энергетика" },
  { name: "Brain_Sciences", name_ru: "Нейронаука" },
  { name: "Cognitive_Emotion_Sensibility_Sciences", name_ru: "Психология" },
  { name: "Science_Technology_Society", name_ru: "Научно_техническое_сообщество" },
  { name: "Environment", name_ru: "Окружающая_среда" },  
  { name: "Construction_Transportation", name_ru: "Строительство_Транспорт" }
])

puts 'ScienceSpecificField creation'
#1
field = ScienceField.where(name: "Mathematics").first
field.science_specific_fields.create([
  { name: "Algebra", name_ru: "Алгебра" },
  { name: "Analysis", name_ru: "Анализ" },
  { name: "Topology", name_ru: "Топология" },  
  { name: "Geometry", name_ru: "Геометрия" },  
  { name: "Applied Mathematics", name_ru: "Прикладная математика" },  
  { name: "Discrete/Information Mathematics", name_ru: "Дискретная/Информационная математика" },  
  { name: "Parametric inference/calculation", name_ru: "Параметрические расчеты" },  
  { name: "Models/Data analysis", name_ru: "Моделирование/Анализ данных" },  
  { name: "Applied Statistics", name_ru: "Прикладная статистика" },  
  { name: "Probability/Stochastic Process", name_ru: "Вероятность/Стохастический процесс" },  
  { name: "Other Mathematics", name_ru: "Другой раздел данной науки" }	
])

#2
field = ScienceField.where(name: "Physics").first
field.science_specific_fields.create([
  { name: "Particle Physics/Field Theory", name_ru: "Физика частиц/Теория поля" },
  { name: "Statistical Physics", name_ru: "Статистическая физика" },
  { name: "Nuclear Physics", name_ru: "Ядерная физика" },  
  { name: "Fluid/Plasma", name_ru: "Жидкость/Плазма" },  
  { name: "Optics", name_ru: "Оптика" },  
  { name: "Condensed Matter Physics", name_ru: "Физика конденсированной среды" },  
  { name: "Atomic/Molecular Physics", name_ru: "Атомная/Молекулярная физика" },  
  { name: "Astrophysics", name_ru: "Астрофизика" },  
  { name: "Interdisciplinary Physics", name_ru: "Междисциплинарная физика" },  
  { name: "Other Physics", name_ru: "Другой раздел данной науки" }
])

#3
field = ScienceField.where(name: "Chemistry").first
field.science_specific_fields.create([
  { name: "Physical Chemistry", name_ru: "Физическая химия" },
  { name: "Organic Chemistry", name_ru: "Органическая химия" },
  { name: "Inorganic Chemistry", name_ru: "Неорганическая химия" },  
  { name: "Analytical Chemistry", name_ru: "Аналитическая химия" },  
  { name: "Polymer Chemistry", name_ru: "Полимерная химия" },  
  { name: "Biochemistry", name_ru: "Биохимия" },  
  { name: "Photochemistry", name_ru: "Фотохимия" },  
  { name: "Electrochemistry", name_ru: "Электрохимия" },  
  { name: "Nanochemistry", name_ru: "Нанохимия" },  
  { name: "Interdisciplinary Chemistry", name_ru: "Междисциплинарная химия" },  
  { name: "Other Chemistry", name_ru: "Другой раздел данной науки" }
])

#4
field = ScienceField.where(name: "EarthScience_Earth_Atmosphere_Marine_Astronomy").first
field.science_specific_fields.create([
  { name: "Geological Science", name_ru: "Геология" },
  { name: "Geophysics", name_ru: "Геофизика" },
  { name: "Geochemistry", name_ru: "Геохимия" },  
  { name: "Atmospheric Science", name_ru: "Атмосфера" },  
  { name: "Meteorological science", name_ru: "Метеорология" },  
  { name: "Climatology", name_ru: "Климатология" },  
  { name: "Nature Disaster Analysis/Forecast", name_ru: "Анализ природных катостроф/Прогноз" },  
  { name: "Marine Sciences", name_ru: "Морские науки" },  
  { name: "Marine Resources", name_ru: "Морские ресурсы" },  
  { name: "Marine Life Sciences and Resources", name_ru: "Науки о морской жизни и морские ресурсы" },  
  { name: "Polar Science", name_ru: "Полярные науки" },	
  { name: "Astronomy", name_ru: "Астрономия" },	
  { name: "Aerospace Science", name_ru: "Аэрокосмические науки" },	
  { name: "Astro-Space Observation", name_ru: "Астрокосмическое наблюдение" },	
  { name: "Other Earth Science", name_ru: "Другой раздел данной науки" }
])

#5
field = ScienceField.where(name: "Life_Science").first
field.science_specific_fields.create([
  { name: "Molecular Cell Biology", name_ru: "Молекулярная клеточная биология" },
  { name: "Genetics/Genetic Engineering", name_ru: "Генетика/Генная инженерия" },
  { name: "Developmental/Neuronal Biology", name_ru: "Эволюционная/Нейронная биология" },  
  { name: "Immunology/Physiology", name_ru: "Иммунология/Физиология" },  
  { name: "Phylogenetics/Ecology/Environmentalbiology", name_ru: "Филогенетика/Экология/Экологическая биология" },  
  { name: "Biochemistry/Structural Biology", name_ru: "Биохимия/Структурная биология" },  
  { name: "Convergence Biotechnology", name_ru: "Конвергенция биотехнологии" },  
  { name: "Bioengineering", name_ru: "Биоинженерия" },  
  { name: "Industrial Biotechnology", name_ru: "Промышленные биотехнологии" },  
  { name: "Bioprocess/Facilities", name_ru: "Биопроцесс / Услуги" },  
  { name: "Biological Safety", name_ru: "Биологическая безопасность" },	
  { name: "Other Life Science", name_ru: "Другой раздел данной науки" }
])

#6
field = ScienceField.where(name: "Agriculture_Fishery_Food").first
field.science_specific_fields.create([
  { name: "Science of Food and Crops", name_ru: "Наука о еде и продовольствии" },
  { name: "Horticulture Science", name_ru: "Садоводство" },
  { name: "Agricultural Biology", name_ru: "Сельскохозяйственная биология" },  
  { name: "Agricultural Chemistry", name_ru: "Сельскохозяйственная химия" },  
  { name: "Environment of Agricultural Ecology", name_ru: "Окружающая среда сельскохозяйственной экологии" },  
  { name: "Science of Animal Resources", name_ru: "Наука о животных ресурсах" },  
  { name: "Veterinary Science", name_ru: "Ветеринария" },  
  { name: "Agricultural Engineering", name_ru: "Сельскохозяйственная инженерия" },  
  { name: "Agricultural Civil Engineering", name_ru: "Сельскохозяйственная гражданская инженерия" },  
  { name: "Forest Resources", name_ru: "Лесные ресурсы" },  
  { name: "Science of Landscape Architecture", name_ru: "Наука о ландшафтной архитектуре" },	
  { name: "Forest Products", name_ru: "Лесные продукты" },	
  { name: "Aquaculture", name_ru: "Аквакультура" },	
  { name: "Fisheries Resource Management/Fishing Environment", name_ru: "Управление рыбными ресурсами/Окружающая среда рыболовства" },	
  { name: "Fishery Product/Processing", name_ru: "Рыбные продукты/Производство" },	
  { name: "Agricultural, fisheries, livestock goods sanitation/quality control", name_ru: "Санация и контроль качества сельскохозяйственных, рыбных, животноводческих продуктов" },	
  { name: "Food Science", name_ru: "Наука о еде" },	
  { name: "Food and Nutrition Science", name_ru: "Наука о еде и питании" },	
  { name: "Food Cooking/Food Service/Improvement", name_ru: "Приготовление еды/Сервис/Среда" },	
  { name: "Agriculture, Food and Fishery Management/Information", name_ru: "Управление сельским и рыбным хозяйством" },	
  { name: "Other Agriculture, Fishery and Food", name_ru: "Другой раздел данной науки" }
])

#7
field = ScienceField.where(name: "Health_Science").first
field.science_specific_fields.create([
  { name: "Biomedical Sciences", name_ru: "Биомедицина" },
  { name: "Clinical Medicine", name_ru: "Клиническая медицина" },
  { name: "Development of Pharmaceutical", name_ru: "Развитие фармацефтических препаратов" },  
  { name: "Medical Device for Therapy/Diagnosis", name_ru: "Терапевтическое медицинское оборудование/Диагностика" },  
  { name: "Medical Devices for Reconstruction/Rehabilitation/Well-being", name_ru: "Медицинское оборудование для восстановления/Реабилитация/Здоровье" },  
  { name: "Medical Informatics/System", name_ru: "Медицинская информатика/Системы" },  
  { name: "Traditional Korean Medical Science", name_ru: "Традиционная корейская медицина" },  
  { name: "Health Science", name_ru: "Наука о здоровье" },  
  { name: "Nursing Science", name_ru: "Сестринское дело" },  
  { name: "Dental Science", name_ru: "Стоматология" },  
  { name: "Food Safety Management", name_ru: "Управление безопаснотью пищевых продуктов" },	
  { name: "Nutrition Management", name_ru: "Управление питанием" },	
  { name: "Safety Management of Drug", name_ru: "Безопасное управление лекарствами" },	
  { name: "Safety Management of Medical Devices", name_ru: "Безопасное управление медицинским оборудованием" },	
  { name: "Toxicology/Safety Management Base Technology", name_ru: "Токсикология/Безопасное управление основными технологиями" },	
  { name: "Other Health Sciences", name_ru: "Другой раздел данной науки" }
])

#8
field = ScienceField.where(name: "Machinery").first
field.science_specific_fields.create([
  { name: "Measurement Standards/Test Evaluation", name_ru: "Измерительные стандарты/Оценка испытиний" },
  { name: "Manufacturing Platform", name_ru: "Производственная платформа" },
  { name: "Machine Element", name_ru: "Элементы машин" },  
  { name: "Precision Machines", name_ru: "Высокоточные станки" },  
  { name: "Robot/Automated Machinery", name_ru: "Роботы/Автоматическое машиностроение" },  
  { name: "Nano/Micro Machine System", name_ru: "Нано/Микро машинные системы" },  
  { name: "Energy/Environment Machine System", name_ru: "Энерго-машинные системы" },  
  { name: "Industrial/General Machinery", name_ru: "Промышленное/общее машиностроение" },  
  { name: "Vehicle/Rolling Stock", name_ru: "Автомобили/Подвижной состав" },  
  { name: "Naval Architecture/Ocean Engineering", name_ru: "Военно-морская архитектура/Подводная техника" },  
  { name: "Aircraft System", name_ru: "Системы самолетов" },	
  { name: "Space Launch Vehicle", name_ru: "Космический ракета-носитель" },	
  { name: "Satellite System", name_ru: "Спутниковая система" },	
  { name: "Disaster Prevention and Safety Machines", name_ru: "Машины предупреждения стихийных бедствий и машины безопасности" },	
  { name: "National Defense Platform", name_ru: "Платформа национальной обороны" },	
  { name: "Other Machinery", name_ru: "Другой раздел данной науки" }
])

#9
field = ScienceField.where(name: "Materials").first
field.science_specific_fields.create([
  { name: "Metallic Materials", name_ru: "Металлические материалы" },
  { name: "Ceramic Materials", name_ru: "Керамические материалы" },
  { name: "Polymeric Materials", name_ru: "Полимерные материалы" },  
  { name: "Casting/Welding/Joining", name_ru: "Литье / Сварка / Присоединение" },  
  { name: "Plastic Deformation Process/Powders", name_ru: "Процессе пластического деформирования / Порошки" },  
  { name: "Thermal/Surface Treatment", name_ru: "Тепловая/Поверхностная обработка" },  
  { name: "Analysis/Characteristics Evaluation technology", name_ru: "Анализ/Технология оценки характеристик" },  
  { name: "Military Materials", name_ru: "Военные материалы" },  
  { name: "Other Materials", name_ru: "Другой раздел данной науки" }
])

#10
field = ScienceField.where(name: "Chemical_Engineering").first
field.science_specific_fields.create([
  { name: "Chemical Process", name_ru: "Химический процесс" },
  { name: "Nano-chemical Process", name_ru: "Нано-химический процесс" },
  { name: "Polymeric Materials and Process", name_ru: "Полимерные материалы и связанные с ними процессы" },  
  { name: "Biochemical Process", name_ru: "Биохимические процессы" },  
  { name: "Fine-chemical Process", name_ru: "Химические реакции" },  
  { name: "General Chemical Products", name_ru: "Общие химические продукты" },  
  { name: "Fiber Production", name_ru: "Производство волокна" },  
  { name: "Dyeing and Finishing", name_ru: "Окраска и отделка" },  
  { name: "Textile Goods", name_ru: "Текстильные товары" },  
  { name: "Safety Technology for Chemical Process", name_ru: "Технология безопасности для химических процессов" },  
  { name: "CBR Weapon/Fire Power Ammunition", name_ru: "Хим-, био-, радиооружие/Вооруженность боеприпасами" },	
  { name: "Other Chemical Engineering", name_ru: "Другой раздел данной науки" }
])

#11
field = ScienceField.where(name: "Electricity_Electronics").first
field.science_specific_fields.create([
  { name: "Optical Instrument", name_ru: "Оптический прибор" },
  { name: "Semiconductor Equipment", name_ru: "Полупроводниковое оборудование" },
  { name: "Heavy Electric Apparatus", name_ru: "Тяжелая электроаппаратура" },  
  { name: "Semiconductor Device/System", name_ru: "Полупроводниковое оборудование/Системы" },  
  { name: "Electric and Electronic Components", name_ru: "Электрические и электронные компоненты" },  
  { name: "Home/Electric Appliances", name_ru: "Домашние/Электротовары" },  
  { name: "Measuring Instrument and Equipment", name_ru: "Измерительные инструменты и оборудование" },  
  { name: "Audio/Video Equipment", name_ru: "Аудио/Видео оборудование" },  
  { name: "Cell/Battery", name_ru: "Батареи/аккумуляторы" },  
  { name: "Display", name_ru: "Дисплей, монитор" },  
  { name: "Weapon/Ordnance Sensor and Control", name_ru: "Оружие/Контроль и измерение боеприпасов" },	
  { name: "Other Electricity/Electronics", name_ru: "Другой раздел данной науки" }   
])

#12
field = ScienceField.where(name: "Information_Communication").first
field.science_specific_fields.create([
  { name: "Information Processing Theory", name_ru: "Теория обработки данных" },
  { name: "Software", name_ru: "Программное обеспечение" },
  { name: "Information Security", name_ru: "Информационная безопасность" },  
  { name: "Broadband Convergence Network", name_ru: "Широкополосная Конвергенция сети" },  
  { name: "Satellite/Radio", name_ru: "Спутниковая связь/Радио" },  
  { name: "Wireless/Mobile Communication", name_ru: "Беспроводная/Мобильная связь" },  
  { name: "Digital Broadcasting", name_ru: "Цифровое вещание" },  
  { name: "Home Network", name_ru: "Домашняя компьютерная сеть" },  
  { name: "RFID/USN", name_ru: "Радиочастотная идентификация/Последовательное обновление" },  
  { name: "Ubiquitous Computing", name_ru: "Глобальные вычисления" },  
  { name: "IT module/device", name_ru: "IT модуль / устройство" },	
  { name: "ITS/Telematics", name_ru: "Сигнал испытательной строки/Телематика" },	
  { name: "Disaster Information Management", name_ru: "Управление информационными бедствиями" },	
  { name: "National Defense Information Telecommunication", name_ru: "Информационная и телекоммуникационная информационная безопасность" },	
  { name: "Other Information/Communication", name_ru: "Другой раздел данной науки" }
])

#13
field = ScienceField.where(name: "Energy_Resources").first
field.science_specific_fields.create([
  { name: "Greenhouse Gas Treatment", name_ru: "Обработка газа" },
  { name: "Resources Exploration/Development/Utilization", name_ru: "Исследование ресурсов/Развитие/Утилизация" },
  { name: "Hydro/Thermal Electric Power Generation", name_ru: "Гидро/Тепловая электростанция" },  
  { name: "Electric Power Transmission/Distribution system", name_ru: "Передача электроэнергии/Распределительные системы" },  
  { name: "IT(Intelligent Electric Power System)", name_ru: "IT(Интеллектуальная электроэнергетическая система)" },  
  { name: "New and Renewable Energy", name_ru: "Новые и возобновляемые источники энергии" },  
  { name: "Other Energy/Resource", name_ru: "Другой раздел данной науки" }
])

#14
field = ScienceField.where(name: "Nuclear_Power").first
field.science_specific_fields.create([
  { name: "Nuclear Reactor Core", name_ru: "Активная зона ядерного" },
  { name: "NSSS/Primary components", name_ru: "Ядерная паропроизводящая установка АЭС/Первичные компоненты" },
  { name: "Nuclear Instrumentation/Control", name_ru: "Ядерные приборы/Контроль" },  
  { name: "Nuclear Safety", name_ru: "Ядерная безопасность" },  
  { name: "Nuclear Fuel/Material", name_ru: "Ядерное топливо/Материалы" },  
  { name: "Nuclear Fuel Cycle/Radioactive Waste Management", name_ru: "Цикл ядерного топлива/Управление радиоактивными отходами" },  
  { name: "Radiation Technology", name_ru: "Радиационная технология" },  
  { name: "Nuclear Basic Science/Advanced Technology", name_ru: "Фундаментальная ядерная наука/Передовая технология" },  
  { name: "Nuclear System Construction and Operation", name_ru: "Строительство ядерной системы и ее функционирование" },  
  { name: "Nuclear Fusion", name_ru: "Ядерный синтез" },  
  { name: "Other Nuclear Power", name_ru: "Другой раздел данной науки" }	
])

#15
field = ScienceField.where(name: "Brain_Sciences").first
field.science_specific_fields.create([
  { name: "Molecular and Celluar Neuroscience", name_ru: "Молекулярная и клеточная нейронаука" },
  { name: "Cognitive Neuroscience", name_ru: "Когнитивная нейронаука" },
  { name: "Medical and Pharmacological Research for Brain", name_ru: "Медицинские и фармакологические исследования мозга" },  
  { name: "Neuroengineering", name_ru: "Нейроинженерия" },  
  { name: "Other Brain Sciences", name_ru: "Другой раздел данной науки" }	
])

#16
field = ScienceField.where(name: "Cognitive_Emotion_Sensibility_Sciences").first
field.science_specific_fields.create([
  { name: "Cognitive Science", name_ru: "Когнитивная наука" },
  { name: "Science of Emotion and Sensibility", name_ru: "Эмоции и чувства" },
  { name: "Other Cognitive/Emotion and Sensibility Sciences", name_ru: "Другой раздел данной науки" }
])

#17
field = ScienceField.where(name: "Science_Technology_Society").first
field.science_specific_fields.create([
  { name: "History of Science and Technology", name_ru: "История науки и технологии" },
  { name: "Philosophy of Science and Technology", name_ru: "Философия науки и технологии" },
  { name: "Science and Technology Policy/Society", name_ru: "Политика/сообщество науки и технологии" },  
  { name: "Bioethics/Medical Ethics", name_ru: "Биоэтика/Медицинская этика" },  
  { name: "Other Science, Technology and Society", name_ru: "Другой раздел данной науки" }
])

#18
field = ScienceField.where(name: "Environment").first
field.science_specific_fields.create([
  { name: "Air Quality Management", name_ru: "Управление качеством воздуха" },
  { name: "Water Management", name_ru: "Водопользование" },
  { name: "Soil/Groundwater Remediation/Management", name_ru: "Почвы/Восстановление подземных вод/Управление" },  
  { name: "Ecology Restoration/Management", name_ru: "Восстановление экологии/Управление" },  
  { name: "Noise/Vibration Control and Management", name_ru: "Шум/Контроль и управление вибрациями" },  
  { name: "Marine Environments", name_ru: "Морская окружающая среда" },  
  { name: "Waste Management/Resource Recycling", name_ru: "Управление отходами/Переработка ресурсов" },  
  { name: "Risk Assessment/Risk Management", name_ru: "Оценка рисков/Управление рисками" },  
  { name: "Environmental Health", name_ru: "Гигиена окружающей среды" },  
  { name: "Environmental Prediction/Monitoring/Evaluation", name_ru: "Экологический прогноз/Мониторинг/Оценка" },  
  { name: "Environmentally Friendly Materials/Products", name_ru: "Экологически чистые материалы/Продукты" },	
  { name: "Environmentally Friendly Process", name_ru: "Экологически чистые процессы" },	
  { name: "Equipments/Facilities for Environmental Analysis and measurement", name_ru: "Оборудование/Услуги для экологического анализа и измерения" },	
  { name: "Cleaner Production/Clean Facilities", name_ru: "Чистое производство/Чистые услуги" },	
  { name: "Industrial Environment", name_ru: "Производственная среда" },	
  { name: "Other Environment", name_ru: "Другой раздел данной науки" },	
])

#19
field = ScienceField.where(name: "Construction_Transportation").first
field.science_specific_fields.create([
  { name: "National Land Policy/Planning", name_ru: "Национальная политика землеустройства" },
  { name: "National Land Spatial Development Technology", name_ru: "Технология национального земельного развития" },
  { name: "Design/Analysis for Facilities", name_ru: "Дизайн/Анализ благоустройства" },  
  { name: "Construction Engineering/Materials/Management", name_ru: "Строительная техника/Материалы/Управление" },  
  { name: "Highway Transportation Technology", name_ru: "Скоростные дороги и транспорт" },  
  { name: "Railway Transportation Technology", name_ru: "Железные дороги и ЖД транспорт" },  
  { name: "Air Transportation Technology", name_ru: "Авиатранспорт" },  
  { name: "Maritime Safety/Transportation Technology", name_ru: "Морская безопасность/Морской транспорт" },  
  { name: "Water Engineering System", name_ru: "Водный инжениринг" },  
  { name: "Logistics Technology", name_ru: "Логистика" },  
  { name: "Infra-structure Inspection/Evaluation", name_ru: "Контроль за инфраструктурой/Оценивание" },	
  { name: "Construction Environment/Equipment", name_ru: "Строительство окружающей среды/Оборудование" },	
  { name: "Other Construction/Transportation", name_ru: "Другой раздел данной науки" }	
])
