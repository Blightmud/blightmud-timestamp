mud.add_input_listener(function (line)
    print(cformat("<bwhite>%s<byellow> > %s<reset>", os.date("[%H:%M:%S]"), line:line()))
    line:gag(true)
    return line
end)

mud.add_output_listener(function (line)
    local ts = cformat("<bwhite>%s<reset> ", os.date("[%H:%M:%S]"))
    line:replace(ts .. line:raw())
    return line
end)
