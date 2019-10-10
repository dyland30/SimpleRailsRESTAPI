FactoryBot.define do
  factory :vuelo do
    numvuelo { "MyString" }
    fechaprogramado { "2019-10-10 14:59:52" }
    fechareal { "2019-10-10 14:59:52" }
    estado { "MyString" }
    direccion { "MyString" }
    aerolinea { nil }
  end
end
