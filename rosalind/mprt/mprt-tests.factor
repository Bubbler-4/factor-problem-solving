! Copyright (C) 2020 Bubbler.
! See http://factorcode.org/license.txt for BSD license.
USING: tools.test rosalind.mprt ;
IN: rosalind.mprt.tests

CONSTANT: example {
  { "A2Z669" "MRASRPVVHPVEAPPPAALAVAAAAVAVEAGVGAGGGAAAHGGENAQPRGVRMKDPPGAPGTPGGLGLRLVQAFFAAAALAVMASTDDFPSVSAFCYLVAAAILQCLWSLSLAVVDIYALLVKRSLRNPQAVCIFTIGDGITGTLTLGAACASAGITVLIGNDLNICANNHCASFETATAMAFISWFALAPSCVLNFWSMASR" }
  { "B5ZC00" "MKNKFKTQEELVNHLKTVGFVFANSEIYNGLANAWDYGPLGVLLKNNLKNLWWKEFVTKQKDVVGLDSAIILNPLVWKASGHLDNFSDPLIDCKNCKARYRADKLIESFDENIHIAENSSNEEFAKVLNDYEISCPTCKQFNWTEIRHFNLMFKTYQGVIEDAKNVVYLRPETAQGIFVNFKNVQRSMRLHLPFGIAQIGKSFRNEITPGNFIFRTREFEQMEIEFFLKEESAYDIFDKYLNQIENWLVSACGLSLNNLRKHEHPKEELSHYSKKTIDFEYNFLHGFSELYGIAYRTNYDLSVHMNLSKKDLTYFDEQTKEKYVPHVIEPSVGVERLLYAILTEATFIEKLENDDERILMDLKYDLAPYKIAVMPLVNKLKDKAEEIYGKILDLNISATFDNSGSIGKRYRRQDAIGTIYCLTIDFDSLDDQQDPSFTIRERNSMAQKRIKLSELPLYLNQKAHEDFQRQCQK" }
  { "P07204_TRBM_HUMAN" "MLGVLVLGALALAGLGFPAPAEPQPGGSQCVEHDCFALYPGPATFLNASQICDGLRGHLMTVRSSVAADVISLLLNGDGGVGRRRLWIGLQLPPGCGDPKRLGPLRGFQWVTGDNNTSYSRWARLDLNGAPLCGPLCVAVSAAEATVPSEPIWEEQQCEVKADGFLCEFHFPATCRPLAVEPGAAAAAVSITYGTPFAARGADFQALPVGSSAAVAPLGLQLMCTAPPGAVQGHWAREAPGAWDCSVENGGCEHACNAIPGAPRCQCPAGAALQADGRSCTASATQSCNDLCEHFCVPNPDQPGSYSCMCETGYRLAADQHRCEDVDDCILEPSPCPQRCVNTQGGFECHCYPNYDLVDGECVEPVDPCFRANCEYQCQPLNQTSYLCVCAEGFAPIPHEPHRCQMFCNQTACPADCDPNTQASCECPEGYILDDGFICTDIDECENGGFCSGVCHNLPGTFECICGPDSALARHIGTDCDSGKVDGGDSGSGEPPPSPTPGSTLTPPAVGLVHSGLLIGISIASLCLVVALLALLCHLRKKQGAARAKMEYKCAAPSKEVVLQHVRTERTPQRL" }
  { "P20840_SAG1_YEAST" "MFTFLKIILWLFSLALASAININDITFSNLEITPLTANKQPDQGWTATFDFSIADASSIREGDEFTLSMPHVYRIKLLNSSQTATISLADGTEAFKCYVSQQAAYLYENTTFTCTAQNDLSSYNTIDGSITFSLNFSDGGSSYEYELENAKFFKSGPMLVKLGNQMSDVVNFDPAAFTENVFHSGRSTGYGSFESYHLGMYCPNGYFLGGTEKIDYDSSNNNVDLDCSSVQVYSSNDFNDWWFPQSYNDTNADVTCFGSNLWITLDEKLYDGEMLWVNALQSLPANVNTIDHALEFQYTCLDTIANTTYATQFSTTREFIVYQGRNLGTASAKSSFISTTTTDLTSINTSAYSTGSISTVETGNRTTSEVISHVVTTSTKLSPTATTSLTIAQTSIYSTDSNITVGTDIHTTSEVISDVETISRETASTVVAAPTSTTGWTGAMNTYISQFTSSSFATINSTPIISSSAVFETSDASIVNVHTENITNTAAVPSEEPTFVNATRNSLNSFCSSKQPSSPSSYTSSPLVSSLSVSKTLLSTSFTPSVPTSNTYIKTKNTGYFEHTALTTSSVGLNSFSETAVSSQGTKIDTFLVSSLIAYPSSASGSQLSGIQQNFTSTSLMISTYEGKASIFFSAELGSIIFLLLSYLLF" }
}

{ { { "B5ZC00" { 85 118 142 306 395 } } { "P07204_TRBM_HUMAN" { 47 115 116 382 409 } } { "P20840_SAG1_YEAST" { 79 109 135 248 306 348 364 402 485 501 614 } } } }
[ example mprt ] unit-test
