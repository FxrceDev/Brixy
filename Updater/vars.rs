#define {
    _get::"Midnite Studios"
}

#definefrom ({
    "Midnite Studios":: {
        _get::"System"
    }
})

#definefrom ({
    "Midnite Studios":: {
        _get::"InternalCoreComponents"
    }
})

#function ("GetVariables")  {

    print!("Beginning variable indexing")
    from InternalCoreComponents do {
        get {
            "InternalCoreComponents":: {
                _get_comp::"Variables"
                from Variables do {
                    get {
                        "Variables":: {
                            _get_comp::"AllComps"
                        }
                    }
                }
            }
        }
    }

}