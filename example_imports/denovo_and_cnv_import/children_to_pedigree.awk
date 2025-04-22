BEGIN {
    OFS="\t"
    print "familyId", "personId", "dadId", "momId", "status", "sex"
}
$1 == "SSC" {
    fid = $2
    if( fid in families == 0) {
        families[fid] = 1
        print fid, fid".mo", "0", "0", "unaffected", "F"
        print fid, fid".fa", "0", "0", "unaffected", "M"
    }
    print fid, $3, fid".fa", fid".mo", $4, $5
}
