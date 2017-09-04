function runAll_vottir
seqTir={
    'boat1'
    'birds'
};
    for s=1:numel(seqTir)
        run_tracker(seqTir{s});
    end
end