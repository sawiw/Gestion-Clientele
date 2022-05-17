<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Fournisseur
 *
 * @ORM\Table(name="fournisseur")
 * @ORM\Entity
 */
class Fournisseur
{
    /**
     * @var int
     *
     * @ORM\Column(name="numfour", type="smallint", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="SEQUENCE")
     * @ORM\SequenceGenerator(sequenceName="fournisseur_numfour_seq", allocationSize=1, initialValue=1)
     */
    private $numfour;

    /**
     * @var string|null
     *
     * @ORM\Column(name="nomfour", type="text", nullable=true, options={"default"="Non renseigne"})
     */
    private $nomfour = 'Non renseigne';

    /**
     * @var bool|null
     *
     * @ORM\Column(name="bio", type="boolean", nullable=true)
     */
    private $bio;

    public function getNumfour(): ?int
    {
        return $this->numfour;
    }

    public function getNomfour(): ?string
    {
        return $this->nomfour;
    }

    public function setNomfour(?string $nomfour): self
    {
        $this->nomfour = $nomfour;

        return $this;
    }

    public function isBio(): ?bool
    {
        return $this->bio;
    }

    public function setBio(?bool $bio): self
    {
        $this->bio = $bio;

        return $this;
    }


}
