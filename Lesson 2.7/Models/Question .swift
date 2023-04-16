//
//  Question .swift
//  Lesson 2.7
//
//  Created by Ирина Шалагина on 16.04.2023.
//

struct Question {
    let title: String
    let type: ResponceType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
        Question(title: "Какую пищу вы предпочитаете?",
                 type: .single,
                 answers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle)
                          ]
                ),
        Question(title: "Что вам нравится больше?",
                 type: .multiple,
                 answers: [
                    Answer(title: "Плавать", animal: .dog),
                    Answer(title: "Спать", animal: .cat),
                    Answer(title: "Обниматься", animal: .rabbit),
                    Answer(title: "Целоваться", animal: .turtle)
                 ]
                ),
        Question(title: "Любите ли вы поездки на машине?",
                 type: .ranged,
                 answers: [
                    Answer(title: "Ненавижу", animal: .cat),
                    Answer(title: "Нервничаю", animal: .rabbit),
                    Answer(title: "Не замечаю", animal: .turtle),
                    Answer(title: "Обожаю", animal: .dog)
                 ]
                )
        ]
    }
}

enum ResponceType {
    case single
    case multiple
    case ranged
}


struct Answer {
    let title: String
    let animal: Animal
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
            
        case .dog:
            return "Вам нравится быть друзьями. Вы окружаете себя людьми, которые вам нравятся и всегда готовы помочь."
        case .cat:
            return "Вам себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравится все мягкое. Вы здоровы и полны энергии."
        case .turtle:
            return "Ваша сила - в мудрости. Медленный и вдумчивый выигрывает на больших дистанциях."
        }
    }
}


