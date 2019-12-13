Describe 'Star of A New Hope' {

    It 'Is Luke' {

        $Character = Get-ApiResource 'people/1/'

        $Character.name | Should Be 'Luke Skywalker'
    }

}

Describe 'Father of last test' {
    It 'Is Anakin' {
        $Character = Get-ApiResource 'people/11/'
        $Character.name | Should Be 'Anakin Skywalker'
    }
} 