//
//  File.swift
//
//
//  Created by Coen ten Thije Boonkkamp on 21/07/2024.
//

import Foundation
import Language

extension TranslatedString {
    public init<Bound>(_ closedRange: ClosedRange<Bound>) where Bound: CustomStringConvertible {
        let translations: [Language: String] = [
            .abkhazian: "\(closedRange.lowerBound) начиная с \(closedRange.upperBound)",
            .afar: "\(closedRange.lowerBound) kaxxa kee ta \(closedRange.upperBound)",
            .afrikaans: "\(closedRange.lowerBound) tot en met \(closedRange.upperBound)",
            .akan: "\(closedRange.lowerBound) kosi \(closedRange.upperBound)",
            .albanian: "\(closedRange.lowerBound) deri më \(closedRange.upperBound)",
            .amharic: "\(closedRange.lowerBound) እስከ \(closedRange.upperBound)",
            .arabic: "\(closedRange.lowerBound) حتى \(closedRange.upperBound)",
            .aragonese: "\(closedRange.lowerBound) hasta \(closedRange.upperBound)",
            .armenian: "\(closedRange.lowerBound) մինչև \(closedRange.upperBound)",
            .assamese: "\(closedRange.lowerBound) পৰ্যন্ত \(closedRange.upperBound)",
            .auEnglish: "\(closedRange.lowerBound) up to and including \(closedRange.upperBound)",
            .avaric: "\(closedRange.lowerBound) да \(closedRange.upperBound)",
            .avestan: "\(closedRange.lowerBound) raoča \(closedRange.upperBound)",
            .aymara: "\(closedRange.lowerBound) kuti \(closedRange.upperBound)",
            .azerbaijani: "\(closedRange.lowerBound) qədər \(closedRange.upperBound)",
            .bambara: "\(closedRange.lowerBound) ka kɔrɔfɛ \(closedRange.upperBound)",
            .bashkir: "\(closedRange.lowerBound) тиклем \(closedRange.upperBound)",
            .basque: "\(closedRange.lowerBound) arte \(closedRange.upperBound)",
            .belarusian: "\(closedRange.lowerBound) да \(closedRange.upperBound) уключна",
            .bengali: "\(closedRange.lowerBound) পর্যন্ত \(closedRange.upperBound)",
            .bihari: "\(closedRange.lowerBound) लेके \(closedRange.upperBound)",
            .bislama: "\(closedRange.lowerBound) kasem \(closedRange.upperBound)",
            .bosnian: "\(closedRange.lowerBound) do \(closedRange.upperBound) uključujući",
            .breton: "\(closedRange.lowerBound) betek \(closedRange.upperBound)",
            .bulgarian: "\(closedRange.lowerBound) до \(closedRange.upperBound) включително",
            .burmese: "\(closedRange.lowerBound) အထိ \(closedRange.upperBound)",
            .caEnglish: "\(closedRange.lowerBound) up to and including \(closedRange.upperBound)",
            .catalan: "\(closedRange.lowerBound) fins a \(closedRange.upperBound)",
            .chamorro: "\(closedRange.lowerBound) hasta \(closedRange.upperBound)",
            .chechen: "\(closedRange.lowerBound) до \(closedRange.upperBound) кIайла",
            .chinese: "\(closedRange.lowerBound) 到 \(closedRange.upperBound)",
            .chuvash: "\(closedRange.lowerBound) пирĕн \(closedRange.upperBound)",
            .cornish: "\(closedRange.lowerBound) dhe \(closedRange.upperBound)",
            .corsican: "\(closedRange.lowerBound) finu à \(closedRange.upperBound)",
            .cree: "\(closedRange.lowerBound) êkâ wâskahikanê \(closedRange.upperBound)",
            .croatian: "\(closedRange.lowerBound) do \(closedRange.upperBound) uključujući",
            .czech: "\(closedRange.lowerBound) až po \(closedRange.upperBound)",
            .danish: "\(closedRange.lowerBound) op til og med \(closedRange.upperBound)",
            .dutch: "\(closedRange.lowerBound) tot en met \(closedRange.upperBound)",
            .dzongkha: "\(closedRange.lowerBound) ནས་ལོག་ཏུ་རིང་པོ། \(closedRange.upperBound)",
            .english: "\(closedRange.lowerBound) up to and including \(closedRange.upperBound)",
            .esperanto: "\(closedRange.lowerBound) ĝis \(closedRange.upperBound)",
            .estonian: "\(closedRange.lowerBound) kuni \(closedRange.upperBound)",
            .ewe: "\(closedRange.lowerBound) si wo ɖe ɖo \(closedRange.upperBound)",
            .faroese: "\(closedRange.lowerBound) upp til \(closedRange.upperBound)",
            .fijian: "\(closedRange.lowerBound) me yacova \(closedRange.upperBound)",
            .finnish: "\(closedRange.lowerBound) asti \(closedRange.upperBound)",
            .french: "\(closedRange.lowerBound) jusqu'à et y compris \(closedRange.upperBound)",
            .galician: "\(closedRange.lowerBound) ata \(closedRange.upperBound)",
            .gaelicScottish: "\(closedRange.lowerBound) suas gu \(closedRange.upperBound)",
            .georgian: "\(closedRange.lowerBound) მდე \(closedRange.upperBound)",
            .german: "\(closedRange.lowerBound) bis einschließlich \(closedRange.upperBound)",
            .greek: "\(closedRange.lowerBound) μέχρι και \(closedRange.upperBound)",
            .guarani: "\(closedRange.lowerBound) peve \(closedRange.upperBound)",
            .gujarati: "\(closedRange.lowerBound) સુધી \(closedRange.upperBound)",
            .haitianCreole: "\(closedRange.lowerBound) rive \(closedRange.upperBound)",
            .hausa: "\(closedRange.lowerBound) har zuwa \(closedRange.upperBound)",
            .hebrew: "\(closedRange.lowerBound) עד כולל \(closedRange.upperBound)",
            .herero: "\(closedRange.lowerBound) pe \(closedRange.upperBound)",
            .hindi: "\(closedRange.lowerBound) तक \(closedRange.upperBound)",
            .hiriMotu: "\(closedRange.lowerBound) go inap \(closedRange.upperBound)",
            .hungarian: "\(closedRange.lowerBound) -ig bezárólag \(closedRange.upperBound)",
            .icelandic: "\(closedRange.lowerBound) upp í \(closedRange.upperBound)",
            .ido: "\(closedRange.lowerBound) ĝis \(closedRange.upperBound)",
            .igbo: "\(closedRange.lowerBound) ruo \(closedRange.upperBound)",
            .indonesian: "\(closedRange.lowerBound) hingga \(closedRange.upperBound)",
            .interlingua: "\(closedRange.lowerBound) usque ad \(closedRange.upperBound)",
            .interlingue: "\(closedRange.lowerBound) usque ad \(closedRange.upperBound)",
            .inuktitut: "\(closedRange.lowerBound) tikillugu \(closedRange.upperBound)",
            .inupiak: "\(closedRange.lowerBound) unalu \(closedRange.upperBound)",
            .irish: "\(closedRange.lowerBound) go \(closedRange.upperBound)",
            .italian: "\(closedRange.lowerBound) fino a \(closedRange.upperBound)",
            .japanese: "\(closedRange.lowerBound) から \(closedRange.upperBound) まで",
            .javanese: "\(closedRange.lowerBound) nganti \(closedRange.upperBound)",
            .kannada: "\(closedRange.lowerBound) ಮತ್ತು \(closedRange.upperBound) ಒಳಗೊಂಡಂತೆ",
            .kanuri: "\(closedRange.lowerBound) har \(closedRange.upperBound)",
            .kashmiri: "\(closedRange.lowerBound) तइय \(closedRange.upperBound)",
            .kazakh: "\(closedRange.lowerBound) дейін \(closedRange.upperBound)",
            .khmer: "\(closedRange.lowerBound) រហូតដល់ \(closedRange.upperBound)",
            .kikuyu: "\(closedRange.lowerBound) ku \(closedRange.upperBound)",
            .kinyarwanda: "\(closedRange.lowerBound) kugeza \(closedRange.upperBound)",
            .kirundi: "\(closedRange.lowerBound) gushika \(closedRange.upperBound)",
            .korean: "\(closedRange.lowerBound) 부터 \(closedRange.upperBound) 까지",
            .komi: "\(closedRange.lowerBound) дӧра \(closedRange.upperBound)",
            .kongo: "\(closedRange.lowerBound) tee \(closedRange.upperBound)",
            .kurdish: "\(closedRange.lowerBound) heta \(closedRange.upperBound)",
            .kwanyama: "\(closedRange.lowerBound) ku \(closedRange.upperBound)",
            .kyrgyz: "\(closedRange.lowerBound) чейин \(closedRange.upperBound)",
            .lao: "\(closedRange.lowerBound) ຫາ \(closedRange.upperBound)",
            .latin: "\(closedRange.lowerBound) usque ad \(closedRange.upperBound)",
            .latvian: "\(closedRange.lowerBound) līdz \(closedRange.upperBound) ieskaitot",
            .limburgish: "\(closedRange.lowerBound) tot en met \(closedRange.upperBound)",
            .lingala: "\(closedRange.lowerBound) ti \(closedRange.upperBound)",
            .lithuanian: "\(closedRange.lowerBound) iki \(closedRange.upperBound)",
            .lugaKatanga: "\(closedRange.lowerBound) na \(closedRange.upperBound)",
            .luxembourgish: "\(closedRange.lowerBound) bis an \(closedRange.upperBound)",
            .macedonian: "\(closedRange.lowerBound) до \(closedRange.upperBound)",
            .malagasy: "\(closedRange.lowerBound) hatramin'ny \(closedRange.upperBound)",
            .malay: "\(closedRange.lowerBound) hingga \(closedRange.upperBound)",
            .malayalam: "\(closedRange.lowerBound) വരെ \(closedRange.upperBound)",
            .maltese: "\(closedRange.lowerBound) sa \(closedRange.upperBound)",
            .manx: "\(closedRange.lowerBound) dys \(closedRange.upperBound)",
            .maori: "\(closedRange.lowerBound) tae noa ki \(closedRange.upperBound)",
            .marathi: "\(closedRange.lowerBound) पर्यंत \(closedRange.upperBound)",
            .marshallese: "\(closedRange.lowerBound) ñan \(closedRange.upperBound)",
            .moldavian: "\(closedRange.lowerBound) până la \(closedRange.upperBound)",
            .mongolian: "\(closedRange.lowerBound) хүртэл \(closedRange.upperBound)",
            .nauru: "\(closedRange.lowerBound) ng đến \(closedRange.upperBound)",
            .navajo: "\(closedRange.lowerBound) t'áá \(closedRange.upperBound)",
            .ndonga: "\(closedRange.lowerBound) ku \(closedRange.upperBound)",
            .nepali: "\(closedRange.lowerBound) सम्म \(closedRange.upperBound)",
            .northernNdebele: "\(closedRange.lowerBound) kuze kube \(closedRange.upperBound)",
            .norwegian: "\(closedRange.lowerBound) til og med \(closedRange.upperBound)",
            .norwegianBokmål: "\(closedRange.lowerBound) til og med \(closedRange.upperBound)",
            .norwegianNynorsk: "\(closedRange.lowerBound) til og med \(closedRange.upperBound)",
            .occitan: "\(closedRange.lowerBound) fins a \(closedRange.upperBound)",
            .ojibwe: "\(closedRange.lowerBound) giiwashkwe \(closedRange.upperBound)",
            .oriya: "\(closedRange.lowerBound) ପର୍ଯ୍ୟନ୍ତ \(closedRange.upperBound)",
            .oromo: "\(closedRange.lowerBound) hamma \(closedRange.upperBound)",
            .ossetian: "\(closedRange.lowerBound) дар \(closedRange.upperBound)",
            .pāli: "\(closedRange.lowerBound) yāva \(closedRange.upperBound)",
            .persian: "\(closedRange.lowerBound) تا \(closedRange.upperBound)",
            .polish: "\(closedRange.lowerBound) do \(closedRange.upperBound) włącznie",
            .portuguese: "\(closedRange.lowerBound) até \(closedRange.upperBound)",
            .punjabi: "\(closedRange.lowerBound) ਤੱਕ \(closedRange.upperBound)",
            .quechua: "\(closedRange.lowerBound) kawsay \(closedRange.upperBound)",
            .romanian: "\(closedRange.lowerBound) până la \(closedRange.upperBound)",
            .romansh: "\(closedRange.lowerBound) fin ad \(closedRange.upperBound)",
            .russian: "\(closedRange.lowerBound) до \(closedRange.upperBound) включительно",
            .sami: "\(closedRange.lowerBound) ráhkis \(closedRange.upperBound)",
            .samoan: "\(closedRange.lowerBound) seia \(closedRange.upperBound)",
            .sango: "\(closedRange.lowerBound) ti \(closedRange.upperBound)",
            .sanskrit: "\(closedRange.lowerBound) पर्यन्तम् \(closedRange.upperBound)",
            .serbian: "\(closedRange.lowerBound) до \(closedRange.upperBound) укључујући",
            .serboCroatian: "\(closedRange.lowerBound) до \(closedRange.upperBound) укључујући",
            .sesotho: "\(closedRange.lowerBound) ho fihlela \(closedRange.upperBound)",
            .setswana: "\(closedRange.lowerBound) go fitlha \(closedRange.upperBound)",
            .shona: "\(closedRange.lowerBound) kusvika \(closedRange.upperBound)",
            .sindhi: "\(closedRange.lowerBound) تائين \(closedRange.upperBound)",
            .sinhalese: "\(closedRange.lowerBound) තෙක් \(closedRange.upperBound)",
            .slovak: "\(closedRange.lowerBound) až po \(closedRange.upperBound)",
            .slovenian: "\(closedRange.lowerBound) do vključno z \(closedRange.upperBound)",
            .somali: "\(closedRange.lowerBound) ilaa iyo \(closedRange.upperBound)",
            .southernNdebele: "\(closedRange.lowerBound) kuze kube \(closedRange.upperBound)",
            .spanish: "\(closedRange.lowerBound) hasta \(closedRange.upperBound)",
            .sundanese: "\(closedRange.lowerBound) dugi ka \(closedRange.upperBound)",
            .swahili: "\(closedRange.lowerBound) hadi \(closedRange.upperBound)",
            .swati: "\(closedRange.lowerBound) kuze kube \(closedRange.upperBound)",
            .swedish: "\(closedRange.lowerBound) till och med \(closedRange.upperBound)",
            .tagalog: "\(closedRange.lowerBound) hanggang \(closedRange.upperBound)",
            .tahitian: "\(closedRange.lowerBound) e tae atu \(closedRange.upperBound)",
            .tajik: "\(closedRange.lowerBound) то \(closedRange.upperBound)",
            .tamil: "\(closedRange.lowerBound) வரை \(closedRange.upperBound)",
            .tatar: "\(closedRange.lowerBound) кадәр \(closedRange.upperBound)",
            .telugu: "\(closedRange.lowerBound) వరకు \(closedRange.upperBound)",
            .thai: "\(closedRange.lowerBound) ถึง \(closedRange.upperBound)",
            .tibetan: "\(closedRange.lowerBound) ནས་བར \(closedRange.upperBound)",
            .tigrinya: "\(closedRange.lowerBound) ክሳብ \(closedRange.upperBound)",
            .tonga: "\(closedRange.lowerBound) ki \(closedRange.upperBound)",
            .tsonga: "\(closedRange.lowerBound) ku \(closedRange.upperBound)",
            .turkish: "\(closedRange.lowerBound) kadar \(closedRange.upperBound)",
            .turkmen: "\(closedRange.lowerBound) çenli \(closedRange.upperBound)",
            .twi: "\(closedRange.lowerBound) kosi \(closedRange.upperBound)",
            .ukEnglish: "\(closedRange.lowerBound) up to and including \(closedRange.upperBound)",
            .ukrainian: "\(closedRange.lowerBound) до \(closedRange.upperBound) включно",
            .urdu: "\(closedRange.lowerBound) تک \(closedRange.upperBound)",
            .usEnglish: "\(closedRange.lowerBound) up to and including \(closedRange.upperBound)",
            .uyghur: "\(closedRange.lowerBound) چىقىرىلغان \(closedRange.upperBound)",
            .uzbek: "\(closedRange.lowerBound) qadar \(closedRange.upperBound)",
            .venda: "\(closedRange.lowerBound) kha \(closedRange.upperBound)",
            .vietnamese: "\(closedRange.lowerBound) đến \(closedRange.upperBound)",
            .volapük: "\(closedRange.lowerBound) til \(closedRange.upperBound)",
            .wallon: "\(closedRange.lowerBound) ène år \(closedRange.upperBound)",
            .welsh: "\(closedRange.lowerBound) hyd at gynnwys \(closedRange.upperBound)",
            .westernFrisian: "\(closedRange.lowerBound) oant en mei \(closedRange.upperBound)",
            .wolof: "\(closedRange.lowerBound) ba \(closedRange.upperBound)",
            .xhosa: "\(closedRange.lowerBound) ukuya \(closedRange.upperBound)",
            .yoruba: "\(closedRange.lowerBound) titi de \(closedRange.upperBound)",
            .zulu: "\(closedRange.lowerBound) kuze kube \(closedRange.upperBound)"
        ]

        self.init(default: translations[.english]!, dictionary: translations)
    }
}

public extension ClosedRange where Bound: CustomStringConvertible {
    var description: String {
        "\(TranslatedString(self))"
    }
}
