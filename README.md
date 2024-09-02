## Hi, I'm Sun (also known as sunnd4y) 👋
# I'm a passionate coder and game developer. I specialize in creating advanced scripts and tools, with a focus on performance and optimization. I'm always looking to learn and improve my skills, and I'm excited to share my projects and collaborate with others.

# Feel free to explore my repositories and connect with me!


```lua
local Profile = newproxy(true)
local Info = getmetatable(Profile)


type Hobbies = {
  Coding: boolean -> (boolean),
  PlayingGames: boolean -> (boolean),
  SelfImprovement: boolean -> (boolean)
}

type Job = {
  SkiddestSkidOfAllTime: boolean -> (boolean),
  Student: boolean -> (boolean)
}

type Language = {
  Code: {
    Lua: boolean -> (boolean),
    CPP: boolean -> (boolean)
  },
  IrlLang: {
    Thai: boolean -> (boolean),
    English: boolean -> (boolean)
  }
}


Info.__index = ProfileMeta


function Info.new(name: string -> (string), age: number -> (number), hobbies: Hobbies -> (Hobbies), job: Job -> (Job), languages: Language -> (Language)): Profile
  local self = setmetatable({}, Info)
  self.Name = name
  self.Age = age
  self.Hobbies = hobbies
  self.Job = job
  self.Languages = languages
  return self
end


function Info:GetInfo() -> (string)
  local hobbiesList = {}
  for hobby, status in pairs(self.Hobbies) do
    table.insert(hobbiesList, hobby .. ": " .. tostring(status))
  end

  local jobList = {}
  for job, status in pairs(self.Job) do
    table.insert(jobList, job .. ": " .. tostring(status))
  end

  local languagesList = {}
  for category, langs in pairs(self.Languages) do
    for lang, status in pairs(langs) do
      table.insert(languagesList, category .. " " .. lang .. ": " .. tostring(status))
    end
  end

  return string.format("Name: %s\nAge: %d\nHobbies:\n- %s\nJob:\n- %s\nLanguages:\n- %s",
    self.Name, self.Age,
    table.concat(hobbiesList, "\n- "),
    table.concat(jobList, "\n- "),
    table.concat(languagesList, "\n- ")
  )
end


local hobbies: Hobbies = {
    Coding = true,
    PlayingGames = true,
    SelfImprovement = true
  }
  
  local job: Job = {
    SkiddestSkidOfAllTime = true,
    Student = true
  }
  
  local languages: Language = {
    Code = {
      Lua = true,
      CPP = false -- learning
    },
    IrlLang = {
      Thai = true,
      English = true
    }
  }
  
  local profile = Info.new("Sun", 14, hobbies, job, languages)
  print(profile:GetInfo())
```
