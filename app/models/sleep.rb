class Sleep < ApplicationRecord
  enum quality: {普通: "normal", 良: "good", 最高: "excellent", 悪い: "bad" }
end
