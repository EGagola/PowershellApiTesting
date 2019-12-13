Describe 'Man Who Knows Nothing' {
    Context 'First Set' {
        It 'Is Jon' {

            $Character = Get-ApiResource 'characters/583'

            $Character.name | Should Be 'Jon Snow'
        }

    
        It "Is Commander of the Night's Watch" {

            $Character = Get-ApiResource 'characters/583'

            $Character.titles[0] | Should Be "Lord Commander of the Night's Watch"
        }
    }

    Context 'Second Set' {
        It "Is Has Many Aliases" {

        $Character = Get-ApiResource 'characters/583'

        $Character.aliases.count | Should Be 8
        }
    }
}
