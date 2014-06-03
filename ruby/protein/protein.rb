require 'pry'
class Translation

	def self.of_codon(rna)
		codon(rna).first
  end

	def self.of_rna(rna)
		rna_lookup(parse(rna))
	end

private

	def self.parse(rna)
		b = []
		rna.split("").each_slice(3) { |a| b << a.join }
		b
	end

	def self.rna_lookup(parsed_rna)
		array =	parsed_rna.map do |rna|
			codon(rna)
		end.flatten
		if array.include?("STOP")
			stop_case(array)
		else
			array
		end
	end
	
	def self.stop_case(array)
		index = []
		array.each_with_index do |protein, i|
			index << i if protein == "STOP"
		end
		array[0...index.first]
	end

	def self.codon(rna)
		proteins.select { |k,v| v.include?(rna) }.keys
	end

	def self.proteins
		{
			"Methionine" => ["AUG"],
			"Phenylalanine" => ["UUU", "UUC"],
			"Leucine" => ["UUA", "UUG"],
			"Serine" => ["UCU", "UCC", "UCA","UCG"],
			"Tyrosine" => ["UAU", "UAC"],
			"Cystine" => ["UGU", "UGC"],
			"Tryptophan" => ["UGG"],
			"STOP" => ["UAA", "UAG", "UGA"]
		}
	end

end
