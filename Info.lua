local Profile = newproxy(true)
local Info = getmetatable(Profile)


type Hobbies = {
  Coding: boolean,
  PlayingGames: boolean,
  SelfImprovement: boolean
}

type Job = {
  SkiddestSkidOfAllTime: boolean ,
  Student: boolean
}

type Language = {
  Code: {
    Lua: boolean,
    CPP: boolean 
  },
  IrlLang: {
    Thai: boolean ,
    English: boolean
  }
}


Info.__index = Info


function Info.new(name: string , age: number , hobbies: Hobbies , job: Job , languages: Language ): Profile
  local self = setmetatable({}, Info)
  self.Name = name
  self.Age = age
  self.Hobbies = hobbies
  self.Job = job
  self.Languages = languages
  return self
end


function Info:GetInfo(): string 
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
  
  local profile = Info.new("Sun", 69, hobbies, job, languages)
  print(profile:GetInfo())
